**Exercise 3.3**

```assembly
movb $0xF, (%ebx)	# ebx(32-bit) is not an address register
movl %rax, (%rsp)	# mismatch between instruction suffix and register id
movw (%rax), 4(%rsp)	# source and dest are both memory references
movb %al, %sl	# no register called %sl
movq %rax, $0x123	# dest cannot be an immediate
movl %eax, %rdx   # incorrect size
movb %si, 8(%rbp)	# mismatch between instruction suffix and register id
```



**Exercise 3.5**

```c
void decode1(long *xp,long *yp,long *zp)
{
    long x=*xp, y=*yp, z=*zp;
    *yp = x;
    *zp = y;
    *xp = z;
}
```



**Exercise 3.6**

```
6+x
x+y
x+4y
7+9x
10+4y
9+x+2y
```



**Exercise 3.7**

```c
long scale2(long x,long y,long z)
{
	long t = 5*x+2*y+8*z;
    return t;
}
```



**Exercise 3.8**

```assembly
addq %rcx, (%rax)	# 0x100 0x100
subq %rdx, 8(%rax)	# 0x108 0xA8
imulq $16, (%rax,%rdx,8)	# 0x118 0x110
incq 16(%rax)	# 0x110 0x14
decq %rcx	# %rcx 0
subq %rdx, %rax		# %rax 0xFD
```



**Exercise 3.10**

```c
long arith2(long x,long y,long z)
{
    long t1 = x|y;
    long t2 = t1>>3;
    long t3 = ~t2;
    long t4 = z-t3;
    return t4;
}
```



**Exercise 3.18**

```c
long test(long x,long y,long z)
{
    long val=x+y+z;
    if(x<-3)
    {
        if(y<z)
            val = x*y;
        else
            val = y*z;
	}
    else if(x>2)
        val = x*z;
    return val;
}
```



**Exercise 3.21**

```c
long test(long x,long y)
{
    long val=8*x;
    if(y>0)
    {
        if(x>=y)
            val = x&y;
        else
            val = y-x;
	}
    else if(y<=-2)
        val = x+y;
    return val;
}
```



**Exercise 3.24**

```c
long loop_while(long a,long b)
{
    long res=1;
    while(a<b)
    {
        res = res*(a+b);
        a++;
	}
    return res;
}
```



**Exercise 3.25**

```c
long loop_while2(long a,long b)
{
    long res=b;
    while(b>0)
    {
        res *= a;
        b -= a;
	}
    return res;
}
```



**Exercise 3.26**

```c
long fun_a(unsigned long x)	// whether the number of 1's in the bit of x is odd or even
{
    long val=0;
    while(!x)
    {
        val = val^x;
        x >>= 1;
	}
    val = val&1;
    return val;
}
```



**Exercise 3.28**

```c
long fun_b(unsigned long x)	// reverse the bits of x
{
    long val=0,i;
    for(i=64;i!=0;i--)
    {
        val = (val<<1)|(x&1);
        x >>= 1;
	}
    return val;
}
```



**Exercise 3.35**

```c
long rfun(unsigned long x)
{
    if(!x)
        return 0;
    unsigned long nx=x>>2;
    long rv=rfun(nx);
    return x+rv;
}
```



**Exercise 3.38**

$M=5$，$N=7$



**Exercise 3.40**

```c
#define N 16

typedef int fix_matrix[N][N];

void fix_set_diag_opt(fix_matrix A, int val)
{
    int *Ast = &A[0][0];
    int *Aed = &A[N][N];
    do{
        *Ast += val;
        Ast += N;
    }while(Ast!=Aed);
}
```



**Exercise 3.42**

```c
long fun(struct ELE *ptr)
{
    long res=0;
    while(ptr)
    {
        res += ptr->v;
        ptr = ptr->p;
	}
    return res;
}
```



**Exercise 3.60**

```c
long loop(long x, int n)
{
    long res=0;
    for(int s=1;s!=0;s=s<<(n%64))
        res = res|(x&s);
    return res;
}
```



**Exercise 3.62**

```c
typedef enum {MODE_A,MODE_B,MODE_C,MODE_D,MODE_E} mode_t;

long switch3(long *p1, long *p2, mode_t action)
{
    long res=0;
    switch(action){
        case MODE_A:
            res = *p2;
            *p2 = *p1;
            break;
        case MODE_B:
            res = *p1;
            *p1 = *p2;
            break;
        case MODE_C:
            *p1 = 59;
            res = *p2;
            break;
        case MODE_D:
            *p1 = *p2;
            res = 27;
            break;
        case MODE_E:
            res = 27;
            break;
        default:
            res = 12;
    }
    return res;
}
```



**Exercise 3.63**

```c
long switch_prob(long x,long n)
{
    long res=x;
    switch(n){
        case 60:
        case 62:
            res = x+8;
            break;
        case 63:
            res = x>>3;
            break;
        case 64:
            res = x*15;
            x = res;
        case 65:
            x = x*x;
        default:
            res = x+0x4b;
    }
    return res;
}
```



