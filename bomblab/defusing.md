**Preparation**

To disassemble the executive , type

```
objdump -d ./bomb
```



**Phase 1**

After observing the assembly code, we figure out it compares two strings with a plain function called "strings_not_equal", where our input string is stored in ```%rdi``` and the template string is stored in ```%rsi```. Moreover, the template string is at ```0x402400```. So just type in gdb

```
(gdb) x/s 0x402400 
```

Then we can get

```
0x402400:	"Border relations with Canada have never been better."
```

which is the answer to phase 1.



**Phase 2**

This phase first calls a function "read_six_numbers", whose first parameter is the input string, and the second is the current stack pointer ```%rsp```. This function serves as a transformer that transform our input string into six numbers and store them in the stack.

The rest part of phase 2 is an iteration.

The first number must be 1, and the rest forms a geometric sequence with ratio 2, according to these two lines

```assembly
400f17:	8b 43 fc             	mov    -0x4(%rbx),%eax
400f1a:	01 c0                	add    %eax,%eax
```

So the answer is

```
1 2 4 8 16 32
```



**Phase 3**

It's easy to find that the input string should be two numbers, stored in ```0x8(%rsp)``` and ```0xc(%rsp)``` respectively. And the first number is in range(0,8).

```assembly
400f6a:	83 7c 24 08 07       	cmpl   $0x7,0x8(%rsp)
```

With this line

```assembly
400f75:	ff 24 c5 70 24 40 00 	jmp    *0x402470(,%rax,8)
```

we can get the eight jump-to addresses using gdb, which acts like the switch clause

```
(gdb) p/x *(0x402470)
$1 = 0x400f7c
(gdb) p/x *(0x402470+8)
$2 = 0x400fb9
(gdb) p/x *(0x402470+16)
$3 = 0x400f83
(gdb) p/x *(0x402470+24)
$4 = 0x400f8a
(gdb) p/x *(0x402470+32)
$5 = 0x400f91
(gdb) p/x *(0x402470+40)
$6 = 0x400f98
(gdb) p/x *(0x402470+48)
$7 = 0x400f9f
(gdb) p/x *(0x402470+56)
$8 = 0x400fa6
```

The answer to phase 3 is any of the lines below

```
0 207
1 311
2 707
3 256
4 389
5 206
6 682
7 327
```



**Phase 4**

The key to this phase is the function "func4"

```c
int fun4(int x,int y,int z) // x is our first input number, y is 0, z is 14
{
    int val=z-y;
    int s=val>>31;
    val = (val+s)>>1;
    s = val+y;
    if(s==x)
        return 0;
    else if(s<x)
        return fun4(x,s+1,z)*2+1;
    else
        return fun4(x,y,s-1)*2;
}
```

We need to make the return value of fun4 be 0.

One possible answer is

```
0 0
```



**Phase 5**

Obviously, the length of our input string must be 6.

Type

```
(gdb) x/s 0x40245e
```

We get the second parameter of "strings_not_equal" is "flyers".

Type

```
(gdb) x/s 0x4024b0
```

We get "maduiersnfotvbylSo you think you can stop the bomb with ctrl-c, do you?".

The cycle works like a repermutation, which picks certain characters and forms "flyers".

The six characters of "flyers" appear in position 9, 15, 14, 5, 6, 7. We only need the 4 least significant bits of our input characters equal to them respectively.

So the answer can be

```
9?>567
```



**Phase 6**

First read six numbers. From ```0x401117``` to ```0x401151```, the six numbers are in range(1,7) and distinct from each other.

The lines below form a cycle that do "a[i] = 7-a[i];"

```assembly
40115b:	b9 07 00 00 00       	mov    $0x7,%ecx
401160:	89 ca                	mov    %ecx,%edx
401162:	2b 10                	sub    (%rax),%edx
401164:	89 10                	mov    %edx,(%rax)
401166:	48 83 c0 04          	add    $0x4,%rax
40116a:	48 39 f0             	cmp    %rsi,%rax
40116d:	75 f1                	jne    401160 <phase_6+0x6c>
```

Use gdb and find out the struct is like a linked list.

```
(gdb) x/w 0x6032d0
0x6032d0 <node1>:	0x0000014c
(gdb) x/w 0x6032d4
0x6032d4 <node1+4>:	0x00000001
(gdb) x/w 0x6032d8
0x6032d8 <node1+8>:	0x006032e0
(gdb) x/w 0x6032e0
0x6032e0 <node2>:	0x000000a8
(gdb) x/w 0x6032e4
0x6032e4 <node2+4>:	0x00000002
(gdb) x/w 0x6032e8
0x6032e8 <node2+8>:	0x006032f0
(gdb) x/w 0x6032f0
0x6032f0 <node3>:	0x0000039c
(gdb) x/w 0x6032f4
0x6032f4 <node3+4>:	0x00000003
(gdb) x/w 0x6032f8
0x6032f8 <node3+8>:	0x00603300
(gdb) x/w 0x603300
0x603300 <node4>:	0x000002b3
(gdb) x/w 0x603304
0x603304 <node4+4>:	0x00000004
(gdb) x/w 0x603308
0x603308 <node4+8>:	0x00603310
(gdb) x/w 0x603310
0x603310 <node5>:	0x000001dd
(gdb) x/w 0x603314
0x603314 <node5+4>:	0x00000005
(gdb) x/w 0x603318
0x603318 <node5+8>:	0x00603320
(gdb) x/w 0x603320
0x603320 <node6>:	0x000001bb
(gdb) x/w 0x603324
0x603324 <node6+4>:	0x00000006
(gdb) x/w 0x603328
0x603328 <node6+8>:	0x00000000
```

And lines below relink the nodes of this linked list, of which the last line acts as ```l.rest=Link.empty```.

```assembly
4011ab:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
4011b0:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
4011b5:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
4011ba:	48 89 d9             	mov    %rbx,%rcx
4011bd:	48 8b 10             	mov    (%rax),%rdx
4011c0:	48 89 51 08          	mov    %rdx,0x8(%rcx)
4011c4:	48 83 c0 08          	add    $0x8,%rax
4011c8:	48 39 f0             	cmp    %rsi,%rax
4011cb:	74 05                	je     4011d2 <phase_6+0xde>
4011cd:	48 89 d1             	mov    %rdx,%rcx
4011d0:	eb eb                	jmp    4011bd <phase_6+0xc9>
4011d2:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
```

The last part of this phase checks whether the node values of the linked list is descending. So the order of the nodes is ```3 4 5 6 1 2```, and considering the complement of 7, the answer is

```
4 3 2 1 6 5
```



**Secret phase**

When reading the assembly code of ./bomb, we surprisingly find there exists a secret phase.

```
0000000000401242 <secret_phase>
```

So how to enter this phase is the problem we encounter.

Use gdb to look at the address, type

```
(gdb) x/s 0x402619
(gdb) x/s 0x402622
```

We get "%d %d %s" and "DrEvil" respectively.

It implies that only phases with two numbers as the input can enter the secrect phase, by adding "DrEvil" after the two input numbers.

However when we use the gdb to check address 6038670, it returns an empty string.

We can then set breakpoints to see. Type in gdb

```
(gdb) break *0x4015fa
(gdb) run

Breakpoint 4, 0x00000000004015fa in phase_defused ()
(gdb) x/s 0x603870
0x603870 <input_strings+240>:	"0 0"
```

It is the answer of phase 4. So in phase 4, we type ```0 0 DrEvil``` and we can enter the secret phase.

Type in gdb and get

```
(gdb) x /w 0x6030f0
0x6030f0 <n1>:	0x00000024
(gdb) x /w 0x6030f0+0x8
0x6030f8 <n1+8>:	0x00603110
(gdb) x /w 0x6030f0+0x10
0x603100 <n1+16>:	0x00603130
(gdb) x /w 0x603110
0x603110 <n21>:	0x00000008
(gdb) x /w 0x603110+8
0x603118 <n21+8>:	0x00603190
(gdb) x /w 0x603110+0x10
0x603120 <n21+16>:	0x00603150
(gdb) x /w 0x603130
0x603130 <n22>:	0x00000032
(gdb) x /w 0x603130+8
0x603138 <n22+8>:	0x00603170
(gdb) x /w 0x603130+16
0x603140 <n22+16>:	0x006031b0
(gdb) x /w 0x603190
...
```

It's really like a binary tree.

![image-20250122231321015](C:\Users\kouyl\AppData\Roaming\Typora\typora-user-images\image-20250122231321015.png)

Specially, it is a binary search tree.

```cpp
struct tree{
    int val;
    tree* l,r;
};

int fun7(tree* t,int esi) // %esi stores our input number.
{
    if(!t)
        return -1;
    if(t.val==esi)
        return 0;
    if(t.val>esi)
        return fun7(t.l,esi)*2;
    else
        return fun7(t.r,esi)*2+1;
}
```

In order to have the return value 2, we must have %esi be 22. So the answer is

```
22
```



**Mission Completed**

```
Welcome to my fiendish little bomb. You have 6 phases with
which to blow yourself up. Have a nice day!
Border relations with Canada have never been better.
Phase 1 defused. How about the next one?
1 2 4 8 16 32
That's number 2.  Keep going!
0 207
Halfway there!
0 0 DrEvil
So you got that one.  Try this one.
9?>567
Good work!  On to the next...
4 3 2 1 6 5
Curses, you've found the secret phase!
But finding it and solving it are quite different...
22
Wow! You've defused the secret stage!
Congratulations! You've defused the bomb!
```