**Exercise 4.1**

```
30 f3 0f 00 00 00 00 00 00 00
20 31
40 13 fd ff ff ff ff ff ff ff
60 31
70 0c 01 00 00 00 00 00 00
```



**Exercise 4.2**

```assembly
irmovq $-4, %rbx
rmmovq %rsi, 0x800(%rbx)
halt

pushq %rsi
call 0x20c
halt
irmovq $10, %rbx
ret

mrmovq 7(%rbp), %rsp
nop
.byte 0xf0	# Invalid instruction code
popq %rcx

subq %rcx, %rbx
je 0x400
halt

xorq %rsi, %rdx
.byte 0xa0	# pushq instruction
.byte 0xf0	# Invalid register
```



**Exercise 4.5**

```assembly
absSum:
	irmovq $8, %r8
	irmovq $1, %r9
	xorq %rax, %rax
	andq %rsi, %rsi
	jmp test
loop:
	mrmovq (%rdi), %rbx
	xorq %r10, %r10
	subq %rbx, %r10
	jle pos
	rrmovq %r10, %rbx
pos:
	addq %rbx, %rax
	addq %r8, %rdi
	subq %r9, %rsi
test:
	jne loop
	ret
```



**Exercise 4.7**

Push in the original value of ```%rsp```.



**Exercise 4.9**

```c
xor = (a && !b) || (!a && b)
```



**Exercise 4.12**

```c
word Mid = [
  B<=A && A<=C : A
  C<=A && A<=B : A
  A<=B && B<=C : B
  C<=B && B<=A : B
  1 : C
];
```





**Exercise 4.19**

```
bool need_valC =
	icode in { IIRMOVQ, IRMMOVQ, IMRMOVQ, IJXX, ICALL };
```



**Exercise 4.20**

```
word srcB = [
	icode in { IOPQ, IRMMOVQ, IMRMOVQ } : rB;
	icode in { IPUSHQ, IPOPQ, ICALL, IRET } : RRSP;
	1 : RNONE;  # Don't need register
];
```



**Exercise 4.21**

```
word dstM = [
	icode in { IMRMOVQ, IPOPQ } : rA;
	1 : RNONE;  # Don't write any register
];
```





**Exercise 4.23**

```
word aluB = [
	icode in { IRMMOVQ, IMRMOVQ, IOPQ, ICALL, 
		      IPUSHQ, IRET, IPOPQ, IIADDQ } : valB;
	icode in { IRRMOVQ, IIRMOVQ } : 0;
	# Other instructions don't need ALU
];
```



**Exercise 4.24**

```
word dstE = [
	icode in { IRRMOVQ } && Cnd : rB;
	icode in { IIRMOVQ, IOPQ, IIADDQ } : rB;
	icode in { IPUSHQ, IPOPQ, ICALL, IRET } : RRSP;
	1 : RNONE;  # Don't write any register
];
```



**Exercise 4.25**

```
word mem_data = [
	icode in { IRMMOVQ, IPUSHQ } : valA;
	icode == ICALL : valP;
];
```



**Exercise 4.26**

```
bool mem_write = icode in { IRMMOVQ, IPUSHQ, ICALL };
```



**Exercise 4.27**

```
word Stat = [
	imem_error || dmem_error : SADR;
	!instr_valid: SINS;
	icode == IHALT : SHLT;
	1 : SAOK;
];
```


