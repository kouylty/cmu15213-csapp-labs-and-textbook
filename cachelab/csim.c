#include "cachelab.h"
#include <getopt.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct Line{
    int v,tag;
    int t;
}line_t;
typedef struct Cache{
    int S,E,B;
    line_t **line;
}cache_t;

int verbose=0,s,E,b;
int hit_count=0,miss_count=0,eviction_count=0;
FILE *tfile;
cache_t* cache;

void initcache(int argc,char** argv)
{
    char opt;
    while((opt = getopt(argc,argv,"s:E:b:t:vh"))!=-1)
    {
        switch(opt){
            case 'v':
                verbose = 1;
                break;
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                tfile = fopen(optarg,"r");
                break;
            default:
                printf("wrong argument");
                exit(-1);
        }
    }
	cache = (cache_t *)malloc(sizeof(cache_t));
	cache->S = 1<<s;
	cache->E = E;
	cache->B = 1<<b;
	cache->line = (line_t **)(malloc(sizeof(line_t *)*cache->S));
	for(int i=0;i<cache->S;i++)
	{
		cache->line[i] = (line_t *)(malloc(sizeof(line_t)*E));
		for(int j=0;j<cache->E;j++)
		{
			cache->line[i][j].v = 0;
			cache->line[i][j].tag = -1;
			cache->line[i][j].t = 0;
		}
	}
}

void accessdata(int tag,int s,int b)
{
	int u=-1;
	for(int i=0;i<cache->E;i++)
		if(cache->line[s][i].tag==tag)
		{
			u = i;
			break;
		}
	if(u==-1)
	{
		miss_count++;
		if(verbose) printf("miss ");
		int mx=-1;
		for(int i=0;i<cache->E;i++)
		{
			if(!cache->line[s][i].v)
			{
				mx = -2;
				u = i;
				break;
			}
			if(cache->line[s][i].t>mx)
				mx = cache->line[s][i].t, u = i;
		}
		cache->line[s][u].v = 1;
		cache->line[s][u].tag = tag;
		cache->line[s][u].t = 0;
		if(mx>-2)
		{
			eviction_count++;
			if(verbose) printf("eviction ");
		}
	}
	else
	{
		hit_count++;
		cache->line[s][u].t = 0;
		if(verbose) printf("hit ");
	}
	for(int i=0;i<cache->E;i++)
		if(i!=u && cache->line[s][i].v)
			cache->line[s][i].t++;
}

void replaytrace(int s,int E,int b)
{
	char op;
	unsigned long address;
	int siz;
	while(fscanf(tfile, " %c %lx,%d", &op,&address,&siz)!=EOF)
	{
		int tag=address>>(s+b);
		int ss=(address>>b)&((1<<s)-1);
		int bb=address&((1<<b)-1);
		if(op=='L' || op=='S')
		{
			if(verbose) printf("%c %lx,%d ",op,address,siz);
			accessdata(tag,ss,bb);
			if(verbose) printf("\n");
		}
		else if(op=='M')
		{
			if(verbose) printf("%c %lx,%d ",op,address,siz);
			accessdata(tag,ss,bb);
			accessdata(tag,ss,bb);
			if(verbose) printf("\n");
		}
	}
}

void freecache()
{
	for(int i=0;i<cache->S;i++)
		free(cache->line[i]);
	free(cache);
}

int main(int argc,char** argv)
{
	initcache(argc,argv);
	replaytrace(s,E,b);
	freecache();
	printSummary(hit_count,miss_count,eviction_count);

    return 0;
}
