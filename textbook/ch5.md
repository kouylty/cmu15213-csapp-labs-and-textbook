**Exercise 5.3**

```
Code	min		max		incr	suqare
 A.      1       91      90       90
 B.      91      1       90       90
 C.      1       1       90       90
```



**Exercise 5.7**

```c
void combine5(vec_ptr v, data_t *dest)
{
    long i;
    long length = vec_length(v);
    long limit = length-4;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;
    for(i=0;i<limit;i+=5)
    {
        acc = (acc OP data[i]) OP data[i+1];
        acc = (acc OP data[i+2]) OP data[i+3];
        acc = acc OP data[i+4];
	}
    for(;i<length;i++)
        acc = acc OP data[i];
   	*dest = acc;
}
```



**Exercise 5.9**

```c
while(i1<n && i2<n)
{
    int v1=src1[i1],v2=src2[i2];
    int b = (v1<v2);
    dest[id++] = b ? v1 : v2;
    i1 += b;
    i2 += 1-b;
}
```



**Exercise 5.12**

```c
void psum1(float a[], float p[], long n)
{
    long i;
    p[0] = a[0];
    float cur=0,now=a[0];
    for(i=1;i<n;i++)
    {
        cur = now+a[i];
        p[i] = cur;
        pre = cur;
    }
}
```



**Homework 5.15**

```c
void inner4(vec_ptr u, vec_ptr v, data_t *dest)
{
    long i;
    long length =  vec_length(v);
    int limit = length-5;
    data_t *udata = get_vec_start(u), *vdata = get_vec_start(v);
    data_t sum0=(data_t)0,sum1=(data_t)0,sum2=(data_t)0;
    data_t sum3=(data_t)0,sum4=(data_t)0,sum5=(data_t)0;
    for(i=0;i<limit;i+=6)
    {
        sum0 += udata[i+0]*vdata[i+0];
        sum1 += udata[i+1]*vdata[i+1];
        sum2 += udata[i+2]*vdata[i+2];
        sum3 += udata[i+3]*vdata[i+3];
        sum4 += udata[i+4]*vdata[i+4];
        sum5 += udata[i+5]*vdata[i+5];
	}
    for(;i<length;i++)
        sum0 += udata[i]*vdata[i];
    return sum0+sum1+sum2+sum3+sum4+sum5;
}
```



**Homework 5.17**

```c
const unsigned K = sizeof(unsigned long);

void *advanced_memset(void *s,int c,size_t n)
{
    unsigned long d=0;
    for(int i=0;i<K;i++)
        d = (d<<8)+(unsigned char)c;
    size_t cnt=0;
    unsigned long *slong = s;
    if(n>=K)
    {
        while(cnt<n)
        {
            *slong++ = (unsigned long)d;
            cnt += K;
		}
	}
   	unsigned char *schar = slong;
    while(cnt<n)
    {
        *schar++ = (unsigned char)c;
        cnt++;
	}
    return s;
}
```





