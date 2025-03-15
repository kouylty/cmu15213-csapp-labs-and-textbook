/* Exercise 9.9 */
static void place(void *bp, size_t asize)
{
	int bsize = GET_SIZE(HDRP(bp))-asize;
	if(bsize<=2*DSIZE)
	{
		PUT(HDRP(bp),PACK(bsize+asize,1));
		PUT(FTRP(bp),PACK(bsize+asize,1));
	}
	else
	{
		PUT(HDRP(bp),PACK(asize,1));
		PUT(FTRP(bp),PACK(asize,1));
		PUT(HDRP(NEXT_BLKP(bp)),PACK(bsize,0));
		PUT(FTRP(NEXT_BLKP(bp)),PACK(bsize,0));
	}
}
