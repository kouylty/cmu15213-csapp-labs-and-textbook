/* Exercise 9.5 */
#include "csapp.h"

int mmapcopy(int fd,int size)
{
	char *bufp = Mmap(NULL,size,PROT_READ,MAP_PRIVATE,fd,0);
	Write(1,bufp,size);
}

int main(int argc, char **argv)
{
	int fd = Open(argv[1],O_RDONLY,0);
	struct stat stat;
	Fstat(fd,&stat);
	mmapcopy(fd,stat.st_size);
	
	return 0;
}
