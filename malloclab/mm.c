/*
Perf index = 42 (util) + 40 (thru) = 82/100
Explicit free list
*/
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

#define MAX(x,y) ((x)>(y) ? (x) : (y))

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "ateam",
    /* First member's full name */
    "kouylty",
    /* First member's email address */
    "500206888",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE (1<<12)
#define ALIGN(size) (size<=DSIZE ? 2*DSIZE : DSIZE*((size+DSIZE*2-1)/DSIZE))
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define GET(p) (*(unsigned *)(p))
#define PUT(p,v) (*(unsigned *)(p) = (v))
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 1)
#define PACK(size,alloc) ((size) | (alloc))
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp)+GET_SIZE(HDRP(bp))-DSIZE)
#define NEXT_BLKP(bp) ((char *)(bp)+GET_SIZE(HDRP(bp)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE((char *)(bp)-DSIZE))
#define GET_NEXT(bp) (*((unsigned *)(bp)+1))
#define GET_PREV(bp) (*((unsigned *)(bp)))
#define SET_NEXT(p,a) (*((unsigned *)(p)+1) = (a))
#define SET_PREV(p,a) (*((unsigned *)(p)) = (a))

static char *root = 0, *headp = 0;
static void *find_fit(size_t asize);
static void place(void *bp, size_t asize);
static void *coalesce(void *bp);
static void *extend_heap(size_t words);
static void remove_block(void *bp);
static void insert_block(void *bp);

int mm_init(void)
{
	if((headp = mem_sbrk(4*WSIZE))==(void *)-1)
		return -1;
	PUT(headp,0);
	PUT(headp+WSIZE, PACK(DSIZE,1));
	PUT(headp+WSIZE*2, PACK(DSIZE,1));
	PUT(headp+WSIZE*3, PACK(0,1));
	headp += WSIZE*2;
	root = NULL;
	if(extend_heap(CHUNKSIZE/WSIZE)==NULL)
		return -1;
	return 0;
}

void *mm_malloc(size_t size)
{
    size_t asize = ALIGN(size+SIZE_T_SIZE);
    if(headp==0)
    	mm_init();
    if(size==0)
    	return NULL;
    char *bp;
    if((bp = find_fit(asize))!=NULL)
    {
    	place(bp,asize);
    	return bp;
	}
	if((bp = extend_heap(MAX(asize,CHUNKSIZE)/WSIZE))!=NULL)
	{
		place(bp,asize);
		return bp;
	}
	return NULL;
}

void mm_free(void *bp)
{
	if(bp==0)
		return;
	PUT(HDRP(bp), PACK(GET_SIZE(HDRP(bp)),0));
	PUT(FTRP(bp), PACK(GET_SIZE(FTRP(bp)),0));
	SET_PREV(bp, 0), SET_NEXT(bp, 0);
	coalesce(bp);
}

void *mm_realloc(void *bp, size_t size)
{
	if(bp==NULL)
		return mm_malloc(size);
	if(size==0)
	{
		mm_free(bp);
		return NULL;
	}
	size_t osize = GET_SIZE(HDRP(bp));
	char *np = mm_malloc(size);
	if(size<osize) osize = size;
	memcpy(np,bp,osize);
	mm_free(bp);
	return np;
}

static void remove_block(void *bp)
{
	if(bp==NULL || GET_ALLOC(HDRP(bp)))
		return;
	char *prevb = GET_PREV(bp), *nextb = GET_NEXT(bp);
	SET_PREV(bp, 0), SET_NEXT(bp, 0);
	if(prevb==NULL && nextb==NULL)
	{
		root = NULL;
	}
	if(prevb==NULL && nextb!=NULL)
	{
		SET_PREV(nextb, 0);
		root = nextb;
	}
	if(prevb!=NULL && nextb==NULL)
	{
		SET_NEXT(prevb, 0);
	}
	if(prevb!=NULL && nextb!=NULL)
	{
		SET_PREV(nextb, prevb);
		SET_NEXT(prevb, nextb);
	}
}

static void insert_block(void *bp)
{
	if(bp==NULL)
		return;
	if(root==NULL)
	{
		root = bp;
		return;
	}
	SET_PREV(root, bp);
	SET_NEXT(bp, root);
	root = bp;
}

static void *coalesce(void *bp)
{
	char *prevp = PREV_BLKP(bp), *nextp = NEXT_BLKP(bp);
	int prevalloc = GET_ALLOC(FTRP(prevp)), nextalloc = GET_ALLOC(HDRP(nextp));
	size_t asize = GET_SIZE(HDRP(bp));
	if(!prevalloc && nextalloc)
	{
		size_t prevsize = GET_SIZE(FTRP(prevp));
		remove_block(prevp);
		PUT(HDRP(prevp), PACK(asize+prevsize,0));
		PUT(FTRP(bp), PACK(asize+prevsize,0));
		bp = prevp;
	}
	if(prevalloc && !nextalloc)
	{
		size_t nextsize = GET_SIZE(HDRP(nextp));
		remove_block(nextp);
		PUT(HDRP(bp), PACK(asize+nextsize,0));
		PUT(FTRP(nextp), PACK(asize+nextsize,0));
	}
	if(!prevalloc && !nextalloc)
	{
		size_t prevsize = GET_SIZE(FTRP(prevp)), nextsize = GET_SIZE(HDRP(nextp));
		remove_block(prevp), remove_block(nextp);
		PUT(HDRP(prevp), PACK(prevsize+asize+nextsize,0));
		PUT(FTRP(nextp), PACK(prevsize+asize+nextsize,0));
		bp = prevp;
	}
	insert_block(bp);
	return bp;
}

static void *find_fit(size_t asize)
{
	void *rp = root;
	while(rp!=0 && GET_SIZE(HDRP(rp))>0)
	{
		if(!GET_ALLOC(HDRP(rp)) && asize<=GET_SIZE(HDRP(rp)))
			return rp;
		rp = GET_NEXT(rp);
	}
	return NULL;
}

static void place(void *bp, size_t asize)
{
	int bsize = GET_SIZE(HDRP(bp))-asize;
	if(bsize<=2*DSIZE)
	{
		remove_block(bp);
		PUT(HDRP(bp),PACK(bsize+asize,1));
		PUT(FTRP(bp),PACK(bsize+asize,1));
	}
	else
	{
		remove_block(bp);
		PUT(HDRP(bp),PACK(asize,1));
		PUT(FTRP(bp),PACK(asize,1));
		void *np = NEXT_BLKP(bp);
		PUT(HDRP(np),PACK(bsize,0));
		PUT(FTRP(np),PACK(bsize,0));
		SET_PREV(np, 0), SET_NEXT(np, 0);
		coalesce(np);
	}
}

static void *extend_heap(size_t words) 
{
	char *bp;
	size_t size = (words%2==1 ? (words+1)*WSIZE : words*WSIZE);
	if((long)(bp = mem_sbrk(size))==-1)
		return NULL;
	PUT(HDRP(bp), PACK(size,0));
	PUT(FTRP(bp), PACK(size,0));
	SET_PREV(bp, 0);
	SET_NEXT(bp, 0);
	PUT(HDRP(NEXT_BLKP(bp)), PACK(0,1));
	return coalesce(bp);
}
