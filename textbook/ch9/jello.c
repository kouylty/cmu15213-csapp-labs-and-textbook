/* Homework 9.14 */
#include "csapp.h"

int main()
{
	int fd = Open("hello.txt",O_RDWR,0);
	struct stat stat;
	Fstat(fd,&stat);
	char *bufp = Mmap(NULL,stat.st_size,PROT_WRITE,MAP_PRIVATE,fd,0);
	*bufp = 'J';
	Write(1,bufp,stat.st_size);
	
	return 0;
}
