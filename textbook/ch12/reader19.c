/* Homework 12.19 */
#include "csapp.h"

struct lock{
	int readcnt;
	sem_t w;
	sem_t mutex;     
}rw;

void *reader(void *vargp)
{
	while(1)
	{    
		P(&rw.mutex);
		rw.readcnt++;
		if(rw.readcnt==1)
			P(&rw.w);
		V(&rw.mutex);
		printf("Reading %d\n",rw.readcnt);
		P(&rw.mutex);
		rw.readcnt--;
		if(rw.readcnt==0)
			V(&rw.w);
		V(&rw.mutex);
    }
}

void *writer(void *vargp)
{
	while(1)
	{
		if(rw.readcnt>0)
		{
			printf("Reader First %d\n",rw.readcnt);
			continue;
		}
		P(&rw.w);
		printf("Writing\n");
		V(&rw.w);
	}
}

int main()
{
	sem_init(&rw.w,0,1);
	sem_init(&rw.mutex,0,1);
	pthread_t tid[3];
	Pthread_create(&tid[0],NULL,reader,NULL);
	Pthread_create(&tid[1],NULL,writer,NULL);
	Pthread_create(&tid[2],NULL,reader,NULL);
	Pthread_exit(NULL);
}
