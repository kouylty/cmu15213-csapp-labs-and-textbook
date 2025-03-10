#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE 10

typedef struct Line{
    char obj[MAX_OBJECT_SIZE];
    char uri[MAXLINE];
    int v,t;
}line_t;
typedef struct Cache{
    line_t line[MAX_CACHE];
}cache_t;
typedef struct Lockrw{
    int cnt;
    sem_t mutex;
    sem_t w;
}lock_t;

void initcache(cache_t *cache, lock_t *rw);
char *accessdata(cache_t *cache, lock_t *rw, char *uri);
void replaytrace(cache_t *cache, lock_t *rw, char *buf, char *uri);
int recentused(cache_t *cache);