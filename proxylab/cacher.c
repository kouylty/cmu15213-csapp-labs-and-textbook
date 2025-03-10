#include "csapp.h"
#include "cacher.h"

#define MAX_CACHE 10

void initcache(cache_t *cache, lock_t *rw)
{
    cache = (cache_t *)malloc(sizeof(cache_t));
    for(int i=0;i<MAX_CACHE;i++)
        cache->line[i].v = cache->line[i].t = 0;
    rw = (lock_t *)malloc(sizeof(lock_t));
    rw->cnt = 0;
    Sem_init(&rw->mutex,0,1);
    Sem_init(&rw->w,0,1);
}

char *accessdata(cache_t *cache, lock_t *rw, char *uri)
{
    P(&rw->mutex);
    if(rw->cnt==1)
        P(&rw->w);
    rw->cnt++;
    V(&rw->mutex);
    char *res=NULL;
    for(int i=0;i<MAX_CACHE;i++)
        if(cache->line[i].v>0 && !strcmp(uri,cache->line[i].uri))
        {
            res = (char *)malloc(sizeof(cache->line[i].obj));
            strcpy(res,cache->line[i].obj);
            cache->line[i].v = 1;
            cache->line[i].t = recentused(cache)+1;
            break;
        }
    P(&rw->mutex);
    rw->cnt--;
    if(rw->cnt==0)
        V(&rw->w);
    V(&rw->mutex);
    return res;
}

void replaytrace(cache_t *cache, lock_t *rw, char *buf, char *uri)
{
    P(&rw->w);
    int u=0;
    for(u=0;u<MAX_CACHE;u++)
        if(cache->line[u].v==0)
            break;
    if(u==MAX_CACHE)
    {
        int leastused = cache->line[0].t;
        u = 0;
        for(int i=1;i<MAX_CACHE;i++)
            if(cache->line[i].t<leastused)
            {
                leastused = cache->line[i].t;
                u = i;
            }
    }
    cache->line[u].v = 1;
    cache->line[u].t = recentused(cache)+1;
    strcpy(cache->line[u].uri,uri);
    strcpy(cache->line[u].obj,buf);
    V(&rw->w);
}

int recentused(cache_t *cache)
{
    int s=0;
    for(int i=0;i<MAX_CACHE;i++)
        if(cache->line[i].v>0 && cache->line[i].t>s)
            s = cache->line[i].t;
    return s;
}