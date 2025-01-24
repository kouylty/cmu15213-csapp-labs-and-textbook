
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
