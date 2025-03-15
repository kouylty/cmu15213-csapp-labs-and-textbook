/* Homework 12.31 */
#include "csapp.h"

char *tfgets(char *s, int size, FILE *stream);
sigjmp_buf sigbuf;

int main()
{
	char buf[MAXLINE];
	if(tfgets(buf,MAXLINE,stdin)==NULL)
		printf("BOOM!\n");
	else
		printf("%s",buf);
	
	return 0;
}

void sigchld_handler(int sig)
{
	siglongjmp(sigbuf,1);
	return;
}

char *tfgets(char *s, int size, FILE *stream)
{
	if(fork()==0)
	{
		sleep(5);
		exit(0);
	}
	signal(SIGCHLD,sigchld_handler);
	if(sigsetjmp(sigbuf,1))
		return NULL;
	else
		return fgets(s,size,stream);
}
