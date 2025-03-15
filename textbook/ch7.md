**Exercise 7.2**

A. 

(a) $\mathrm{REF(main.1)}\rightarrow\mathrm{DEF(main.1)}$

(b) $\mathrm{REF(main.2)}\rightarrow\mathrm{DEF(main.1)}$

B.

$\mathrm{Error:Two\ strong\ symbols.}$

C.

(a) $\mathrm{REF(x.1)}\rightarrow\mathrm{DEF(x.2)}$

(a) $\mathrm{REF(x.2)}\rightarrow\mathrm{DEF(x.2)}$



**Exercise 7.3**

```
gcc p.o libx.a
gcc p.o libx.a liby.a
gcc p.o libx.a liby.a libx.a
```



**Exercise 7.5**

```0xa```



**Homework 7.7**

```c
/* bar5.c */
static double x;
void f()
{
    x = -0.0;
}
```



**Homework 7.9**

I don't know what happened, but when I type

```
gcc -Wall -Og -o prog foo6.c bar6.c
```

The terminal returns with an error, which contradicts from what is telled by the textbook.

```
/usr/bin/ld: /tmp/cc0XYkGV.o:(.bss+0x0): multiple definition of `main'; 
/tmp/ccgQMRbJ.o:foo6.c:(.text+0x0): first defined here
collect2: error: ld returned 1 exit status
```

Anyway, theoratically, ```main``` is a strong symbol as a function in ```foo6.c```. In ```p2()```, char ```main``` is referenced as the function ```int main()```. The first byte of the assembly code of ```int main()``` is ```0x48```.



**Homework 7.11**

The rest 8 bytes are allocated to ```.bss```, which don't occupy the memory in the compile phase, but in run time.



**Homework 7.12**

```0xa```

```0x22```



