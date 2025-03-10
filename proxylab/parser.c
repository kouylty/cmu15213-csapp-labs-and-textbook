#include "parser.h"

void parse_uri(char *uri, uri_t *uri1, char *cgiargs) 
{
    char *domain_name,*port_num,*pth;
    domain_name = strstr(uri,"//");
    if(domain_name!=NULL)
    {
        domain_name += 2;
        port_num = strstr(domain_name,":");
        pth = strstr(domain_name,"/");
        if(pth!=NULL)
        {
            strcpy(uri1->path,pth);
            *pth = '\0';
        }
        if(port_num==NULL)
            strcpy(uri1->port,"80");
        else
        {
            strcpy(uri1->port,port_num+1);
            *port_num = '\0';
        }
        strcpy(uri1->host,domain_name);
    }
    else
    {
        pth = strstr(uri,"/");
        if(pth!=NULL)
        {
            strcpy(uri1->path,pth);
            *pth = '\0';
        }
        strcpy(uri1->port,"80");
    }
}

void build_request(char *request, char *method, uri_t *uri, char *version, rio_t *rp)
{
    sprintf(request,"%s %s %s\r\n",method,uri->path,version);
    char buf[MAXLINE];
    int host1=0,conn1=0,pconn1=0;
    Rio_readlineb(rp,buf,MAXLINE);
    while(strcmp(buf,"\r\n"))
    {
        if(strstr(buf,"Host:"))
        {
            host1 = 1;
            strcat(request,buf);
        }
        else if(strstr(buf,"Connection:"))
        {
            conn1 = 1;
            strcat(request,buf);
        }
        else if(strstr(buf,"Proxy connection:"))
        {
            pconn1 = 1;
            strcat(request,buf);
        }
        else
            strcat(request,buf);
        Rio_readlineb(rp,buf,MAXLINE);
    }
    strcat(request,user_agent_hdr);
    if(host1==0)
    {
        char hdr[MAXLINE];
        if(strlen(uri->host)>0)
            sprintf(hdr,"Host: %s:%s\r\n",uri->host,uri->port);
        else
            sprintf(hdr,"Host: localhost:80\r\n");
        strcat(request,hdr);
    }
    if(conn1==0)
        strcat(request,connection_hdr);
    if(pconn1==0)
        strcat(request,proxy_connection_hdr);
    strcat(request,"\r\n");
}