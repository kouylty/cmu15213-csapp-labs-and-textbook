#include "csapp.h"
#include "parser.h"
#include "sbuf.h"
#include "cacher.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define NTHREADS 4
#define SBUFSIZE 16

sbuf_t sbuf;
cache_t *cache;
lock_t *rw;

void doit(int fd);
void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg);
void *thread(void *vargp);

void sigpipe_handler(int sig)
{
    return;
}

int main(int argc, char **argv)
{
    if(argc!=2)
    {
        fprintf(stderr,"Usage: %s <port>\n", argv[0]);
        exit(-2);
    }
    Signal(SIGPIPE,sigpipe_handler);
    int listenfd;
    int connfd;
    char hostname[MAXLINE],port[MAXLINE];
    struct sockaddr_storage clientaddr;
    socklen_t clientlen;
    pthread_t tid;
    initcache(cache,rw);
    listenfd = Open_listenfd(argv[1]);
    sbuf_init(&sbuf,SBUFSIZE);
    for(int i=0;i<NTHREADS;i++)
        Pthread_create(&tid,NULL,thread,NULL);
    while(1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        sbuf_insert(&sbuf,connfd);
        Getnameinfo((SA* )&clientaddr, clientlen, hostname, MAXLINE, port, MAXLINE, 0);
        printf("Connected to (%s %s)\n",hostname,port);
    }
    
    return 0;
}

void *thread(void *vargp)
{
    Pthread_detach(pthread_self());
    while(1)
    {
        int connfd = sbuf_remove(&sbuf);
        doit(connfd);
        Close(connfd);
    }
}

void doit(int fd)
{
	char cgiargs[MAXLINE];
	char buf[MAXLINE],method[MAXLINE],uri[MAXLINE],version[MAXLINE];
    char request[MAXLINE];
	rio_t rio,rio1;
    uri_t uri1;
	Rio_readinitb(&rio,fd);
	if(!Rio_readlineb(&rio,buf,MAXLINE)) return;
	printf("%s",buf);
	sscanf(buf,"%s %s %s",method,uri,version);
	if(strcasecmp(method,"GET"))
	{
		clienterror(fd,method,"501","Not Implemented","Proxy does not implement this method.");
		return;
	}
    char *res = accessdata(cache,rw,uri);
    if(res!=NULL)
    {
        Rio_writen(fd,res,strlen(res));
        free(res);
        return;
    }
	parse_uri(uri,&uri1,cgiargs);
    strcpy(version,"HTTP/1.0");
    build_request(request, method, &uri1, version, &rio);
    int clientfd = Open_clientfd(uri1.host, uri1.port);
    Rio_readinitb(&rio1,clientfd);
    Rio_writen(clientfd,request,strlen(request));
    size_t n;
    while((n = Rio_readlineb(&rio1,buf,MAXLINE))!=0)
    {
        printf("Proxy received %d bytes and then sent.\n",(int)n);
        Rio_writen(fd,buf,n);
    }
    replaytrace(cache,rw,buf,uri);
}

void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg) 
{
	char buf[MAXLINE];
	sprintf(buf,"HTTP/1.0 %s %s\r\n",errnum,shortmsg);
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"Content-type: text/html\r\n\r\n");
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"<html><title>Tiny Error</title>");
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"<body bgcolor=""ffffff"">\r\n");
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"%s: %s\r\n",errnum,shortmsg);
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"<p>%s: %s\r\n",longmsg,cause);
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"<hr><em>The Tiny Web server</em>\r\n");
	Rio_writen(fd,buf,strlen(buf));
}