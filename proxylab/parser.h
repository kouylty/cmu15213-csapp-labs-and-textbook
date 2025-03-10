#include "csapp.h"

static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *connection_hdr = "Connection: close\r\n";
static const char *proxy_connection_hdr = "Proxy-Connection: close\r\n";

typedef struct{
    char host[MAXLINE];
    char path[MAXLINE];
    char port[MAXLINE];
}uri_t;

void build_request(char *request, char *method, uri_t *uri, char *version, rio_t *rp);
void parse_uri(char *uri, uri_t *uri1, char *cgiargs);