/* Exercsie 9.8 */
static void *find_fit(size_t asize)
{
	char *p = heap_listp;
	while(GET_SIZE(HDRP(p))>0)
	{
		if(!GET_ALLOC(HDRP(p)) && GET_SIZE(HDRP(p))>=asize)
			return p;
		p = NEXT_BLKP(p);
	}
	return NULL;
}
