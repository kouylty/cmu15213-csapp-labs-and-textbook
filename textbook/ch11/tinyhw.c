#include "csapp.h"

void doit(int fd);
void read_requesthdrs(rio_t *rp, char *method, char *cgiargs);
int parse_uri(char *uri, char *filename, char *cgiargs, char *method);
void serve_static(int fd, char *filename, int filesize, char *method);
void get_filetype(char *filename, char *filetype);
void serve_dynamic(int fd, char *filename, char *cgiargs);
void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg);

int main(int argc, char **argv)
{
	if(argc!=2)
	{
		fprintf(stderr,"Usage: %s <port>\n", argv[0]);
		exit(-2);
	}
	int listenfd,connfd;
	char hostname[MAXLINE],port[MAXLINE];
	struct sockaddr_storage clientaddr;
	socklen_t clientlen;
	listenfd = Open_listenfd(argv[1]);
	while(1)
	{
		clientlen = sizeof(clientaddr);
		connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
		Getnameinfo((SA* )&clientaddr, clientlen, hostname, MAXLINE, port, MAXLINE, 0);
		printf("Connected to (%s %s)\n",hostname,port);
		doit(connfd);
		Close(connfd);
	}
	
	return 0;
}

void doit(int fd)
{
	int is_static;
	char filename[MAXLINE],cgiargs[MAXLINE];
	char buf[MAXLINE],method[MAXLINE],uri[MAXLINE],version[MAXLINE];
	struct stat sbuf;
	rio_t rio;
	Rio_readinitb(&rio,fd);
	if(!Rio_readlineb(&rio,buf,MAXLINE)) return;
	printf("%s",buf);
	sscanf(buf,"%s %s %s",method,uri,version);
	if(strcasecmp(method,"GET") && strcasecmp(method,"HEAD") && strcasecmp(method,"POST"))
	{
		clienterror(fd,method,"501","Not Implemented","Tiny does not implement this method.");
		return;
	}
	read_requesthdrs(&rio,method,cgiargs);
	is_static = parse_uri(uri,filename,cgiargs,method);
	if(stat(filename,&sbuf)<0)
	{
		clienterror(fd,filename,"404","Not Found","Tiny cannot find this file.");
		return;
	}
	if(is_static)
	{
		if(!S_ISREG(sbuf.st_mode) || !(S_IXUSR & sbuf.st_mode))
		{
			clienterror(fd,filename,"403","Forbidden","Tiny cannot read this file.");
			return;
		}
		serve_static(fd,filename,sbuf.st_size,method);
	}
	else
	{
		if(!S_ISREG(sbuf.st_mode) || !(S_IXUSR & sbuf.st_mode))
		{
			clienterror(fd,filename,"403","Forbidden","Tiny cannot run this program.");
			return;
		}
		serve_dynamic(fd,filename,cgiargs);
	}
}

void read_requesthdrs(rio_t *rp, char *method, char *cgiargs) 
{
	char buf[MAXLINE];
	Rio_readlineb(rp,buf,MAXLINE);
	printf("%s",buf);
	while(strcmp(buf,"\r\n"))
	{
		Rio_readlineb(rp,buf,MAXLINE);
		printf("%s",buf);
	}
	fflush(stdout);
	if(!strcasecmp(method,"POST"))
	{
		Rio_readnb(rp,buf,rp->rio_cnt);
		strcpy(cgiargs,buf);
	}
}

int parse_uri(char *uri, char *filename, char *cgiargs, char *method) 
{
    char *ptr;
    if(!strstr(uri,"cgi-bin"))
	{
		strcpy(cgiargs,"");
		strcpy(filename,".");
		strcat(filename,uri);
		if(uri[strlen(uri)-1]=='/')
			strcat(filename, "home.html");
		return 1;
    }
	else
	{
		if(!strcasecmp(method,"GET"))
		{
			ptr = index(uri,'?');
			if(ptr)
			{
				strcpy(cgiargs,ptr+1);
				*ptr = '\0';
			}
			else 
				strcpy(cgiargs,"");
		}
		strcpy(filename,".");
		strcat(filename,uri);
		return 0;
    }
}

void serve_static(int fd, char *filename, int filesize, char *method)
{
	if(!strcasecmp(method,"HEAD"))
		return;
	int srcfd;
	char *srcp,filetype[MAXLINE],buf[MAXBUF];
	get_filetype(filename,filetype);
	sprintf(buf,"HTTP/1.0 200 OK\r\n");
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"Server: Tiny Web Server\r\n");
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"Content-length: %d\r\n",filesize);
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"Content-type: %s\r\n\r\n",filetype);
	Rio_writen(fd,buf,strlen(buf));
	srcfd = Open(filename,O_RDONLY,0);
	srcp = malloc(filesize);
	Rio_readn(srcfd,srcp,filesize);
	Rio_writen(fd,srcp,filesize);
	Close(srcfd);
	free(srcp);
}

void sigchld_handler(int sig)
{
	int status,olderrno = errno;
	while(waitpid(-1,NULL,0)>0);
	if(errno!=ECHILD)
		Sio_error("Waitpid error");
	errno = olderrno;
}

void serve_dynamic(int fd, char *filename, char *cgiargs) 
{
	char buf[MAXLINE], *emptylist[] = {NULL};
	sprintf(buf,"HTTP/1.0 200 OK\r\n"); 
	Rio_writen(fd,buf,strlen(buf));
	sprintf(buf,"Server: Tiny Web Server\r\n");
	Rio_writen(fd,buf,strlen(buf));
	Signal(SIGCHLD,sigchld_handler);
	if (Fork()==0)
	{
		setenv("QUERY_STRING",cgiargs,1);
		Dup2(fd,STDOUT_FILENO);
		Execve(filename,emptylist,environ);
    }
}

void get_filetype(char *filename, char *filetype) 
{
    if(strstr(filename,".html")) strcpy(filetype,"text/html");
    else if(strstr(filename,".gif")) strcpy(filetype,"image/gif");
    else if(strstr(filename,".png")) strcpy(filetype,"image/png");
    else if(strstr(filename,".jpg")) strcpy(filetype,"image/jpeg");
    else if(strstr(filename,".mpg")) strcpy(filetype,"video/mpeg");	
    else strcpy(filetype,"text/plain");
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
