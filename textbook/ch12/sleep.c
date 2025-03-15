#include "csapp.h"

void *thread(void *vargp);

int main()
{
	pthread_t tid;
	Pthread_create(&tid,NULL,thread,NULL);
	int tret;
	Pthread_exit(&tret);
	
	return 0;
}

void *thread(void *vargp)
{
	sleep(1);
	printf("Hello World!\n");
	return NULL;
}
