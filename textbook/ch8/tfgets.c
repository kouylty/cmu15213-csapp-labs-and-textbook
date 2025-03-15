#include "csapp.h"

sigjmp_buf buf;

void sigalrm_handler(int sig)
{
	siglongjmp(buf,1);
}

char *tfgets(char *s, int siz, FILE *stream)
{
	alarm(5);
	if(!sigsetjmp(buf,1))
		return fgets(s,siz,stream);
	else
		return NULL;
}

int main()
{
	if(signal(SIGALRM,sigalrm_handler)==SIG_ERR)
	{
		fprintf(stderr,"fail to install handler.\n");
		exit(-1);
	}
	char buf[10];
	char *s = tfgets(buf,sizeof(buf),stdin);
	if(!s)
		printf("time out.\n");
	else
		printf("%s\n",s);
	
	return 0;
}
