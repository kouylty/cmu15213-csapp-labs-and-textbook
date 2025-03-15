/* Exercise 11.4 */
#include "csapp.h"

int main(int argc, char **argv)
{
	if(argc!=2)
	{
		fprintf(stderr,"Invalid arguments. Usage: %s <domain name>\n",argv[0]);
		exit(1);
	}
	struct addrinfo *listp, hints;
	memset(&hints,0,sizeof(struct addrinfo));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_STREAM;
	int rc;
	if((rc = getaddrinfo(argv[1], NULL, &hints, &listp))!=0)
	{
		fprintf(stderr,"getaddrinfo error: %s\n",gai_strerror(rc));
		exit(rc);
	}
	int flag = NI_NUMERICHOST;
	char buf[MAXLINE];
	for(struct addrinfo *p = listp; p ; p = p->ai_next)
	{
		struct sockaddr_in *sockp = (struct sockaddr_in *)(p->ai_addr);
		inet_ntop(AF_INET,&(sockp->sin_addr), buf, MAXLINE);
		printf("%s\n",buf);
	}
	
	return 0;
}
