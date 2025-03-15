/* Homework 12.16 */
#include "csapp.h"

void *thread(void *vargp);

int main(int argc, char **argv)
{
	if(argc!=2)
	{
		printf("Usage: %s <thread_number>\n",argv[0]);
		exit(-2);
	}
	int n = atoi(argv[1]);
	pthread_t tid[10];
	for(int i=0;i<n;i++)
		Pthread_create(&tid[i],NULL,thread,NULL);
	for(int i=0;i<n;i++)
		Pthread_join(tid[i],NULL);

	return 0;
}

void *thread(void *vargp)
{
	printf("Hello world!	--From thread %ld\n",pthread_self());
	return NULL;
}
