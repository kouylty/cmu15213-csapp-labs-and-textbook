#include <stdio.h>
#include <string.h>

/* Begin Picture 2-4 */
typedef unsigned char *byte_pointer; // tell the compiler to regard the pointed data with the new data type

void show_bytes(byte_pointer start, size_t len)
{
    size_t i;
    for(i=0;i<len;i++)
        printf("%.2x ",start[i]);
    printf("\n");
}

void show_int(int x)
{
    show_bytes((byte_pointer) &x, sizeof(int));
}
void show_float(float x)
{
    show_bytes((byte_pointer) &x, sizeof(float));
}
void show_pointer(void *x)
{
    show_bytes((byte_pointer) &x, sizeof(void *));
}
/* End Picture 2-4 */

/* Begin Picture 2-5 */
void test_show_byte(int val)
{
    int ival=val;
    float fval=(float)val;
    int *pval=&val;
    show_int(ival);
    show_float(fval);
    show_pointer(pval);
}
/* End Picture 2-5*/

/* Begin Exercise 2.10 */
void inplace_swap(int *x,int *y)
{
    *y = *x^*y;
    *x = *x^*y;
    *y = *x^*y;
}
/* End Exercese 2.10 */

/* Begin Exercise 2.13 */
int bis(int x,int m)
{
    return x|m;
}
int bic(int x,int m)
{
    return x&(~m);
}

int bool_or(int x,int y)
{
    return bis(x,y);
}
int bool_xor(int x,int y)
{
    return bis(bic(x,y),bic(y,x));
}
/* End Exercise 2.13 */

/* Begin Exercise 2.30 */
int tadd_ok(int x,int y)
{
    int s=x+y;
    int p=(s<0 && x>=0 && y>=0), n=(s>=0 && x<0 && y<0);
    return (!p && !n);
}
/* End Exercise 2.30 */

/* Begin Homework 2.74 */
int tsub_ok(int x,int y)
{
    int Tmin=-2147483648;
    if(y>Tmin)
        return tadd_ok(x,-y);
    else
        return (x<0);
}
/* End Homework 2.74 */

/* Begin Exercise 2.42 */
int div16(int x)
{
    int bias=(x>>31)&15;
    return (x+bias)>>4;
}
/* End Exercise 2.42 */

/* Begin Homework 2.63 */
unsigned srl(unsigned x,int k)
{
    unsigned xara = (int)x>>k;
    int s = (1<<31-k)-1;
    s = s|(1<<31-k);
    return xara&s;
}
int sra(int x,int k)
{
    int xsrl = (unsigned)x>>k;
    int s = x>>31&1;
    s = ((s<<k)-1)<<(32-k);
    return xsrl|s;
}
/* End Homework 2.63 */

/* Begin Homework 2.65 */
int odd_ones(unsigned x)
{
    x = x^(x>>16);
    x = x^(x>>8);
    x = x^(x>>4);
    x = x^(x>>2);
    x = x^(x>>1);
    return x&1;
}
/* End Homework 2.65 */

/* Begin Homework 2.66 */
int leftmost_one(unsigned x)
{
    x = x|x>>1;
    x = x|x>>2;
    x = x|x>>4;
    x = x|x>>8;
    x = x|x>>16;
    return x^(x>>1);
}
int rightmost_one(int x) // lowbit
{
    return x&(-x);
}
/* End Homework 2.66 */

/* Begin Homework 2.69 */
unsigned rotate_left(unsigned x,int n)
{
    unsigned s = ((1<<n)-1)<<(32-n);
    return x<<n | (x&s)>>32-n;
}
/* End Homework 2.69 */

/* Begin Homework 2.73 */
int saturating_add(int x,int y)
{
    int Tmin=-2147483648,Tmax=2147483648;
    int sum=x+y;
    int sx=x>>31, sy=y>>31, ss=sum>>31;
    int sd=(x^y)>>31;
    return (sum&sd) + (sx&sy&(~ss)&Tmin) + ((~sx)&(~sy)&ss&Tmax); 
}
/* End Homework 2.73 */

/* Begin Homework 2.79 */
int mul3div4(int x)
{
    return ((x<<1)+x)>>2;
}
/* End Homework 2.79 */

/* Begin Homework 2.80 */
int threefourths(int x)
{
    int s = x>>31&1;
    int h = x&(~0b11), l = x&(0b11);
    h = ((h>>2)<<1)+(h>>2);
    l = (l<<1)+l;
    l = (l+3*s)>>2;
    return h+l;
}
/* End Homework 2.80 */

/* Begin Homework 2.95 */
unsigned float_half(unsigned uf)
{
    int s = uf>>31&1;
    unsigned exp = (uf>>23)&0xff;
    unsigned frac = uf&0x7fffff;
    if(exp==0xff)
        return uf;
    else if(exp==0)
        return (s<<31) | (frac>>1);
    else if(exp==1)
        return (s<<31) | (frac>>1) | (1<<22);
    else
        return (s<<31) | ((exp-1)<<23) | frac;
}
/* End Homework 2.95 */

int main(void)
{
    /* Begin Exercise 2.5 */
    int val=0x87654321;
    test_show_byte(val);
    byte_pointer valp=(byte_pointer)&val;
    show_bytes(valp,1); // A. 21 87
    show_bytes(valp,2); // B. 21 43 87 65
    show_bytes(valp,3); // C. 21 43 65 87 65 43
    // My personal Ubuntu uses little endian.
    /* End Exercise 2.5 */

    /* Begin Exercise 2.7 */
    const char *s = "abcdef";
    show_bytes((byte_pointer)s, strlen(s)); // 61 62 63 64 65 66
    /* End Exercise 2.7 */

    /* Begin Exercise 2.21 */
    printf("%d ",(-2147483647-1==2147483648u)); // 1
    printf("%d ",(-2147483647-1<2147483647)); // 1
    printf("%d ",(-2147483647-1u<2147483647)); // 0
    printf("%d ",(-2147483647-1<-2147483647)); // 1
    printf("%d\n",(-2147483647-1u<-2147483647)); // 1
    /* End Exercise 2.21 */

    /* Begin Homework 2.74 */
    printf("%d ",tsub_ok(0,2147483647)); // 1
    printf("%d ",tsub_ok(0,-2147483647)); // 1
    printf("%d ",tsub_ok(2147483647,-1)); // 0
    printf("%d ",tsub_ok(0,-2147483648)); // 0
    printf("%d\n",tsub_ok(-2147483648,-2147483648)); // 1
    /* End Exercise 2.74 */

    /* Begin Homework 2.63 */
    printf("%x ",srl(0xf1234567,4)); // f123456
    printf("%x ",srl(0xf1234567,0)); // f1234567
    printf("%x ",srl(0xf1234567,31)); // 1
    printf("%x ",sra(0xf1234567,4)); // ff123456
    printf("%x ",sra(0xf1234567,0)); // f1234567
    printf("%x\n",sra(0xf1234567,31)); // ffffffff
    /* End Homework 2.63 */

    /* Begin Homework 2.66 */
    printf("%x ",leftmost_one(0x30303030)); // 20000000
    printf("%x\n",rightmost_one(0x30303030)); // 10
    /* End Homework 2.66 */
}