movq    %rsp, %rax
movq    %rax, %rdi
popq    %rax
movl    %eax, %edx
movl    %edx, %ecx
movl    %ecx, %esi
leaq    (%rdi,%rsi), %rax
movq    %rax, %rdi