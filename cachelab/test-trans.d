
test-trans:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 3e 00 00    	push   0x3ee2(%rip)        # 4f08 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3e 00 00    	jmp    *0x3ee4(%rip)        # 4f10 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   %ax,%ax
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	e9 32 ff ff ff       	jmp    1020 <_init+0x20>
    10ee:	66 90                	xchg   %ax,%ax
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	e9 22 ff ff ff       	jmp    1020 <_init+0x20>
    10fe:	66 90                	xchg   %ax,%ax
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	e9 12 ff ff ff       	jmp    1020 <_init+0x20>
    110e:	66 90                	xchg   %ax,%ax
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	e9 02 ff ff ff       	jmp    1020 <_init+0x20>
    111e:	66 90                	xchg   %ax,%ax
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	e9 f2 fe ff ff       	jmp    1020 <_init+0x20>
    112e:	66 90                	xchg   %ax,%ax
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   $0x10
    1139:	e9 e2 fe ff ff       	jmp    1020 <_init+0x20>
    113e:	66 90                	xchg   %ax,%ax
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   $0x11
    1149:	e9 d2 fe ff ff       	jmp    1020 <_init+0x20>
    114e:	66 90                	xchg   %ax,%ax
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   $0x12
    1159:	e9 c2 fe ff ff       	jmp    1020 <_init+0x20>
    115e:	66 90                	xchg   %ax,%ax
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   $0x13
    1169:	e9 b2 fe ff ff       	jmp    1020 <_init+0x20>
    116e:	66 90                	xchg   %ax,%ax
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   $0x14
    1179:	e9 a2 fe ff ff       	jmp    1020 <_init+0x20>
    117e:	66 90                	xchg   %ax,%ax
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   $0x15
    1189:	e9 92 fe ff ff       	jmp    1020 <_init+0x20>
    118e:	66 90                	xchg   %ax,%ax
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   $0x16
    1199:	e9 82 fe ff ff       	jmp    1020 <_init+0x20>
    119e:	66 90                	xchg   %ax,%ax
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	e9 72 fe ff ff       	jmp    1020 <_init+0x20>
    11ae:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000011b0 <__cxa_finalize@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 3e 3e 00 00    	jmp    *0x3e3e(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011c0 <__isoc99_fscanf@plt>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	ff 25 4e 3d 00 00    	jmp    *0x3d4e(%rip)        # 4f18 <__isoc99_fscanf@GLIBC_2.7>
    11ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011d0 <puts@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	ff 25 46 3d 00 00    	jmp    *0x3d46(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    11da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011e0 <fclose@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	ff 25 3e 3d 00 00    	jmp    *0x3d3e(%rip)        # 4f28 <fclose@GLIBC_2.2.5>
    11ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011f0 <__stack_chk_fail@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	ff 25 36 3d 00 00    	jmp    *0x3d36(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    11fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001200 <system@plt>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	ff 25 2e 3d 00 00    	jmp    *0x3d2e(%rip)        # 4f38 <system@GLIBC_2.2.5>
    120a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001210 <printf@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	ff 25 26 3d 00 00    	jmp    *0x3d26(%rip)        # 4f40 <printf@GLIBC_2.2.5>
    121a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001220 <__assert_fail@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	ff 25 1e 3d 00 00    	jmp    *0x3d1e(%rip)        # 4f48 <__assert_fail@GLIBC_2.2.5>
    122a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001230 <fputs@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	ff 25 16 3d 00 00    	jmp    *0x3d16(%rip)        # 4f50 <fputs@GLIBC_2.2.5>
    123a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001240 <alarm@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	ff 25 0e 3d 00 00    	jmp    *0x3d0e(%rip)        # 4f58 <alarm@GLIBC_2.2.5>
    124a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001250 <srand@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	ff 25 06 3d 00 00    	jmp    *0x3d06(%rip)        # 4f60 <srand@GLIBC_2.2.5>
    125a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001260 <fgets@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	ff 25 fe 3c 00 00    	jmp    *0x3cfe(%rip)        # 4f68 <fgets@GLIBC_2.2.5>
    126a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001270 <strcmp@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	ff 25 f6 3c 00 00    	jmp    *0x3cf6(%rip)        # 4f70 <strcmp@GLIBC_2.2.5>
    127a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001280 <fprintf@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	ff 25 ee 3c 00 00    	jmp    *0x3cee(%rip)        # 4f78 <fprintf@GLIBC_2.2.5>
    128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001290 <__sysv_signal@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	ff 25 e6 3c 00 00    	jmp    *0x3ce6(%rip)        # 4f80 <__sysv_signal@GLIBC_2.2.5>
    129a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012a0 <time@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	ff 25 de 3c 00 00    	jmp    *0x3cde(%rip)        # 4f88 <time@GLIBC_2.2.5>
    12aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012b0 <fflush@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	ff 25 d6 3c 00 00    	jmp    *0x3cd6(%rip)        # 4f90 <fflush@GLIBC_2.2.5>
    12ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012c0 <__isoc99_sscanf@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	ff 25 ce 3c 00 00    	jmp    *0x3cce(%rip)        # 4f98 <__isoc99_sscanf@GLIBC_2.7>
    12ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012d0 <fopen@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	ff 25 c6 3c 00 00    	jmp    *0x3cc6(%rip)        # 4fa0 <fopen@GLIBC_2.2.5>
    12da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012e0 <getopt@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	ff 25 be 3c 00 00    	jmp    *0x3cbe(%rip)        # 4fa8 <getopt@GLIBC_2.2.5>
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012f0 <atoi@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	ff 25 b6 3c 00 00    	jmp    *0x3cb6(%rip)        # 4fb0 <atoi@GLIBC_2.2.5>
    12fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001300 <sprintf@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	ff 25 ae 3c 00 00    	jmp    *0x3cae(%rip)        # 4fb8 <sprintf@GLIBC_2.2.5>
    130a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001310 <exit@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	ff 25 a6 3c 00 00    	jmp    *0x3ca6(%rip)        # 4fc0 <exit@GLIBC_2.2.5>
    131a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001320 <fwrite@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	ff 25 9e 3c 00 00    	jmp    *0x3c9e(%rip)        # 4fc8 <fwrite@GLIBC_2.2.5>
    132a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001330 <rand@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	ff 25 96 3c 00 00    	jmp    *0x3c96(%rip)        # 4fd0 <rand@GLIBC_2.2.5>
    133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001340 <_start>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	31 ed                	xor    %ebp,%ebp
    1346:	49 89 d1             	mov    %rdx,%r9
    1349:	5e                   	pop    %rsi
    134a:	48 89 e2             	mov    %rsp,%rdx
    134d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1351:	50                   	push   %rax
    1352:	54                   	push   %rsp
    1353:	45 31 c0             	xor    %r8d,%r8d
    1356:	31 c9                	xor    %ecx,%ecx
    1358:	48 8d 3d dd 07 00 00 	lea    0x7dd(%rip),%rdi        # 1b3c <main>
    135f:	ff 15 73 3c 00 00    	call   *0x3c73(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    1365:	f4                   	hlt
    1366:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    136d:	00 00 00 

0000000000001370 <deregister_tm_clones>:
    1370:	48 8d 3d e9 3c 00 00 	lea    0x3ce9(%rip),%rdi        # 5060 <stdout@GLIBC_2.2.5>
    1377:	48 8d 05 e2 3c 00 00 	lea    0x3ce2(%rip),%rax        # 5060 <stdout@GLIBC_2.2.5>
    137e:	48 39 f8             	cmp    %rdi,%rax
    1381:	74 15                	je     1398 <deregister_tm_clones+0x28>
    1383:	48 8b 05 56 3c 00 00 	mov    0x3c56(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    138a:	48 85 c0             	test   %rax,%rax
    138d:	74 09                	je     1398 <deregister_tm_clones+0x28>
    138f:	ff e0                	jmp    *%rax
    1391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1398:	c3                   	ret
    1399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013a0 <register_tm_clones>:
    13a0:	48 8d 3d b9 3c 00 00 	lea    0x3cb9(%rip),%rdi        # 5060 <stdout@GLIBC_2.2.5>
    13a7:	48 8d 35 b2 3c 00 00 	lea    0x3cb2(%rip),%rsi        # 5060 <stdout@GLIBC_2.2.5>
    13ae:	48 29 fe             	sub    %rdi,%rsi
    13b1:	48 89 f0             	mov    %rsi,%rax
    13b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13b8:	48 c1 f8 03          	sar    $0x3,%rax
    13bc:	48 01 c6             	add    %rax,%rsi
    13bf:	48 d1 fe             	sar    $1,%rsi
    13c2:	74 14                	je     13d8 <register_tm_clones+0x38>
    13c4:	48 8b 05 25 3c 00 00 	mov    0x3c25(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    13cb:	48 85 c0             	test   %rax,%rax
    13ce:	74 08                	je     13d8 <register_tm_clones+0x38>
    13d0:	ff e0                	jmp    *%rax
    13d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13d8:	c3                   	ret
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <__do_global_dtors_aux>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	80 3d bd 3c 00 00 00 	cmpb   $0x0,0x3cbd(%rip)        # 50a8 <completed.0>
    13eb:	75 2b                	jne    1418 <__do_global_dtors_aux+0x38>
    13ed:	55                   	push   %rbp
    13ee:	48 83 3d 02 3c 00 00 	cmpq   $0x0,0x3c02(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    13f5:	00 
    13f6:	48 89 e5             	mov    %rsp,%rbp
    13f9:	74 0c                	je     1407 <__do_global_dtors_aux+0x27>
    13fb:	48 8b 3d 06 3c 00 00 	mov    0x3c06(%rip),%rdi        # 5008 <__dso_handle>
    1402:	e8 a9 fd ff ff       	call   11b0 <__cxa_finalize@plt>
    1407:	e8 64 ff ff ff       	call   1370 <deregister_tm_clones>
    140c:	c6 05 95 3c 00 00 01 	movb   $0x1,0x3c95(%rip)        # 50a8 <completed.0>
    1413:	5d                   	pop    %rbp
    1414:	c3                   	ret
    1415:	0f 1f 00             	nopl   (%rax)
    1418:	c3                   	ret
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <frame_dummy>:
    1420:	f3 0f 1e fa          	endbr64
    1424:	e9 77 ff ff ff       	jmp    13a0 <register_tm_clones>

0000000000001429 <eval_perf>:
    1429:	f3 0f 1e fa          	endbr64
    142d:	55                   	push   %rbp
    142e:	48 89 e5             	mov    %rsp,%rbp
    1431:	48 81 ec d0 06 00 00 	sub    $0x6d0,%rsp
    1438:	89 bd 3c f9 ff ff    	mov    %edi,-0x6c4(%rbp)
    143e:	89 b5 38 f9 ff ff    	mov    %esi,-0x6c8(%rbp)
    1444:	89 95 34 f9 ff ff    	mov    %edx,-0x6cc(%rbp)
    144a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1451:	00 00 
    1453:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1457:	31 c0                	xor    %eax,%eax
    1459:	b8 00 00 00 00       	mov    $0x0,%eax
    145e:	e8 0b 16 00 00       	call   2a6e <registerFunctions>
    1463:	c7 85 50 f9 ff ff 00 	movl   $0x0,-0x6b0(%rbp)
    146a:	00 00 00 
    146d:	e9 76 05 00 00       	jmp    19e8 <eval_perf+0x5bf>
    1472:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    1478:	48 98                	cltq
    147a:	48 c1 e0 05          	shl    $0x5,%rax
    147e:	48 89 c2             	mov    %rax,%rdx
    1481:	48 8d 05 40 3c 00 00 	lea    0x3c40(%rip),%rax        # 50c8 <func_list+0x8>
    1488:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    148c:	48 8d 15 75 1b 00 00 	lea    0x1b75(%rip),%rdx        # 3008 <_IO_stdin_used+0x8>
    1493:	48 89 d6             	mov    %rdx,%rsi
    1496:	48 89 c7             	mov    %rax,%rdi
    1499:	e8 d2 fd ff ff       	call   1270 <strcmp@plt>
    149e:	85 c0                	test   %eax,%eax
    14a0:	75 0c                	jne    14ae <eval_perf+0x85>
    14a2:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    14a8:	89 05 62 3b 00 00    	mov    %eax,0x3b62(%rip)        # 5010 <results>
    14ae:	8b 15 8c 48 00 00    	mov    0x488c(%rip),%edx        # 5d40 <func_counter>
    14b4:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    14ba:	89 c6                	mov    %eax,%esi
    14bc:	48 8d 05 5d 1b 00 00 	lea    0x1b5d(%rip),%rax        # 3020 <_IO_stdin_used+0x20>
    14c3:	48 89 c7             	mov    %rax,%rdi
    14c6:	b8 00 00 00 00       	mov    $0x0,%eax
    14cb:	e8 40 fd ff ff       	call   1210 <printf@plt>
    14d0:	8b 0d da 3b 00 00    	mov    0x3bda(%rip),%ecx        # 50b0 <N>
    14d6:	8b 15 d0 3b 00 00    	mov    0x3bd0(%rip),%edx        # 50ac <M>
    14dc:	8b b5 50 f9 ff ff    	mov    -0x6b0(%rbp),%esi
    14e2:	48 8d 85 10 fa ff ff 	lea    -0x5f0(%rbp),%rax
    14e9:	41 89 f0             	mov    %esi,%r8d
    14ec:	48 8d 35 7d 1b 00 00 	lea    0x1b7d(%rip),%rsi        # 3070 <_IO_stdin_used+0x70>
    14f3:	48 89 c7             	mov    %rax,%rdi
    14f6:	b8 00 00 00 00       	mov    $0x0,%eax
    14fb:	e8 00 fe ff ff       	call   1300 <sprintf@plt>
    1500:	48 8d 85 10 fa ff ff 	lea    -0x5f0(%rbp),%rax
    1507:	48 89 c7             	mov    %rax,%rdi
    150a:	e8 f1 fc ff ff       	call   1200 <system@plt>
    150f:	c1 f8 08             	sar    $0x8,%eax
    1512:	25 ff 00 00 00       	and    $0xff,%eax
    1517:	89 85 54 f9 ff ff    	mov    %eax,-0x6ac(%rbp)
    151d:	83 bd 54 f9 ff ff 00 	cmpl   $0x0,-0x6ac(%rbp)
    1524:	74 3b                	je     1561 <eval_perf+0x138>
    1526:	8b 15 84 3b 00 00    	mov    0x3b84(%rip),%edx        # 50b0 <N>
    152c:	8b 05 7a 3b 00 00    	mov    0x3b7a(%rip),%eax        # 50ac <M>
    1532:	8b 8d 54 f9 ff ff    	mov    -0x6ac(%rbp),%ecx
    1538:	8d 71 ff             	lea    -0x1(%rcx),%esi
    153b:	8b 8d 50 f9 ff ff    	mov    -0x6b0(%rbp),%ecx
    1541:	41 89 c8             	mov    %ecx,%r8d
    1544:	89 d1                	mov    %edx,%ecx
    1546:	89 c2                	mov    %eax,%edx
    1548:	48 8d 05 81 1b 00 00 	lea    0x1b81(%rip),%rax        # 30d0 <_IO_stdin_used+0xd0>
    154f:	48 89 c7             	mov    %rax,%rdi
    1552:	b8 00 00 00 00       	mov    $0x0,%eax
    1557:	e8 b4 fc ff ff       	call   1210 <printf@plt>
    155c:	e9 80 04 00 00       	jmp    19e1 <eval_perf+0x5b8>
    1561:	48 8d 05 eb 1b 00 00 	lea    0x1beb(%rip),%rax        # 3153 <_IO_stdin_used+0x153>
    1568:	48 89 c6             	mov    %rax,%rsi
    156b:	48 8d 05 e3 1b 00 00 	lea    0x1be3(%rip),%rax        # 3155 <_IO_stdin_used+0x155>
    1572:	48 89 c7             	mov    %rax,%rdi
    1575:	e8 56 fd ff ff       	call   12d0 <fopen@plt>
    157a:	48 89 85 70 f9 ff ff 	mov    %rax,-0x690(%rbp)
    1581:	48 83 bd 70 f9 ff ff 	cmpq   $0x0,-0x690(%rbp)
    1588:	00 
    1589:	75 28                	jne    15b3 <eval_perf+0x18a>
    158b:	48 8d 05 76 1f 00 00 	lea    0x1f76(%rip),%rax        # 3508 <__PRETTY_FUNCTION__.0>
    1592:	48 89 c1             	mov    %rax,%rcx
    1595:	ba 50 00 00 00       	mov    $0x50,%edx
    159a:	48 8d 05 bc 1b 00 00 	lea    0x1bbc(%rip),%rax        # 315d <_IO_stdin_used+0x15d>
    15a1:	48 89 c6             	mov    %rax,%rsi
    15a4:	48 8d 05 bf 1b 00 00 	lea    0x1bbf(%rip),%rax        # 316a <_IO_stdin_used+0x16a>
    15ab:	48 89 c7             	mov    %rax,%rdi
    15ae:	e8 6d fc ff ff       	call   1220 <__assert_fail@plt>
    15b3:	48 8d 8d 60 f9 ff ff 	lea    -0x6a0(%rbp),%rcx
    15ba:	48 8d 95 58 f9 ff ff 	lea    -0x6a8(%rbp),%rdx
    15c1:	48 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%rax
    15c8:	48 8d 35 a5 1b 00 00 	lea    0x1ba5(%rip),%rsi        # 3174 <_IO_stdin_used+0x174>
    15cf:	48 89 c7             	mov    %rax,%rdi
    15d2:	b8 00 00 00 00       	mov    $0x0,%eax
    15d7:	e8 e4 fb ff ff       	call   11c0 <__isoc99_fscanf@plt>
    15dc:	48 8b 85 70 f9 ff ff 	mov    -0x690(%rbp),%rax
    15e3:	48 89 c7             	mov    %rax,%rdi
    15e6:	e8 f5 fb ff ff       	call   11e0 <fclose@plt>
    15eb:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    15f1:	48 98                	cltq
    15f3:	48 c1 e0 05          	shl    $0x5,%rax
    15f7:	48 89 c2             	mov    %rax,%rdx
    15fa:	48 8d 05 cf 3a 00 00 	lea    0x3acf(%rip),%rax        # 50d0 <func_list+0x10>
    1601:	c6 04 02 01          	movb   $0x1,(%rdx,%rax,1)
    1605:	8b 05 05 3a 00 00    	mov    0x3a05(%rip),%eax        # 5010 <results>
    160b:	39 85 50 f9 ff ff    	cmp    %eax,-0x6b0(%rbp)
    1611:	75 0a                	jne    161d <eval_perf+0x1f4>
    1613:	c7 05 f7 39 00 00 01 	movl   $0x1,0x39f7(%rip)        # 5014 <results+0x4>
    161a:	00 00 00 
    161d:	48 8d 05 2f 1b 00 00 	lea    0x1b2f(%rip),%rax        # 3153 <_IO_stdin_used+0x153>
    1624:	48 89 c6             	mov    %rax,%rsi
    1627:	48 8d 05 50 1b 00 00 	lea    0x1b50(%rip),%rax        # 317e <_IO_stdin_used+0x17e>
    162e:	48 89 c7             	mov    %rax,%rdi
    1631:	e8 9a fc ff ff       	call   12d0 <fopen@plt>
    1636:	48 89 85 78 f9 ff ff 	mov    %rax,-0x688(%rbp)
    163d:	48 83 bd 78 f9 ff ff 	cmpq   $0x0,-0x688(%rbp)
    1644:	00 
    1645:	75 28                	jne    166f <eval_perf+0x246>
    1647:	48 8d 05 ba 1e 00 00 	lea    0x1eba(%rip),%rax        # 3508 <__PRETTY_FUNCTION__.0>
    164e:	48 89 c1             	mov    %rax,%rcx
    1651:	ba 5d 00 00 00       	mov    $0x5d,%edx
    1656:	48 8d 05 00 1b 00 00 	lea    0x1b00(%rip),%rax        # 315d <_IO_stdin_used+0x15d>
    165d:	48 89 c6             	mov    %rax,%rsi
    1660:	48 8d 05 21 1b 00 00 	lea    0x1b21(%rip),%rax        # 3188 <_IO_stdin_used+0x188>
    1667:	48 89 c7             	mov    %rax,%rdi
    166a:	e8 b1 fb ff ff       	call   1220 <__assert_fail@plt>
    166f:	8b 95 50 f9 ff ff    	mov    -0x6b0(%rbp),%edx
    1675:	48 8d 85 90 f9 ff ff 	lea    -0x670(%rbp),%rax
    167c:	48 8d 0d 13 1b 00 00 	lea    0x1b13(%rip),%rcx        # 3196 <_IO_stdin_used+0x196>
    1683:	48 89 ce             	mov    %rcx,%rsi
    1686:	48 89 c7             	mov    %rax,%rdi
    1689:	b8 00 00 00 00       	mov    $0x0,%eax
    168e:	e8 6d fc ff ff       	call   1300 <sprintf@plt>
    1693:	48 8d 85 90 f9 ff ff 	lea    -0x670(%rbp),%rax
    169a:	48 8d 15 ff 1a 00 00 	lea    0x1aff(%rip),%rdx        # 31a0 <_IO_stdin_used+0x1a0>
    16a1:	48 89 d6             	mov    %rdx,%rsi
    16a4:	48 89 c7             	mov    %rax,%rdi
    16a7:	e8 24 fc ff ff       	call   12d0 <fopen@plt>
    16ac:	48 89 85 80 f9 ff ff 	mov    %rax,-0x680(%rbp)
    16b3:	48 83 bd 80 f9 ff ff 	cmpq   $0x0,-0x680(%rbp)
    16ba:	00 
    16bb:	75 28                	jne    16e5 <eval_perf+0x2bc>
    16bd:	48 8d 05 44 1e 00 00 	lea    0x1e44(%rip),%rax        # 3508 <__PRETTY_FUNCTION__.0>
    16c4:	48 89 c1             	mov    %rax,%rcx
    16c7:	ba 63 00 00 00       	mov    $0x63,%edx
    16cc:	48 8d 05 8a 1a 00 00 	lea    0x1a8a(%rip),%rax        # 315d <_IO_stdin_used+0x15d>
    16d3:	48 89 c6             	mov    %rax,%rsi
    16d6:	48 8d 05 c5 1a 00 00 	lea    0x1ac5(%rip),%rax        # 31a2 <_IO_stdin_used+0x1a2>
    16dd:	48 89 c7             	mov    %rax,%rdi
    16e0:	e8 3b fb ff ff       	call   1220 <__assert_fail@plt>
    16e5:	c7 85 54 f9 ff ff 00 	movl   $0x0,-0x6ac(%rbp)
    16ec:	00 00 00 
    16ef:	e9 ee 00 00 00       	jmp    17e2 <eval_perf+0x3b9>
    16f4:	0f b6 85 10 fc ff ff 	movzbl -0x3f0(%rbp),%eax
    16fb:	3c 20                	cmp    $0x20,%al
    16fd:	0f 85 df 00 00 00    	jne    17e2 <eval_perf+0x3b9>
    1703:	0f b6 85 12 fc ff ff 	movzbl -0x3ee(%rbp),%eax
    170a:	3c 20                	cmp    $0x20,%al
    170c:	0f 85 d0 00 00 00    	jne    17e2 <eval_perf+0x3b9>
    1712:	0f b6 85 11 fc ff ff 	movzbl -0x3ef(%rbp),%eax
    1719:	3c 53                	cmp    $0x53,%al
    171b:	74 1a                	je     1737 <eval_perf+0x30e>
    171d:	0f b6 85 11 fc ff ff 	movzbl -0x3ef(%rbp),%eax
    1724:	3c 4d                	cmp    $0x4d,%al
    1726:	74 0f                	je     1737 <eval_perf+0x30e>
    1728:	0f b6 85 11 fc ff ff 	movzbl -0x3ef(%rbp),%eax
    172f:	3c 4c                	cmp    $0x4c,%al
    1731:	0f 85 ab 00 00 00    	jne    17e2 <eval_perf+0x3b9>
    1737:	48 8d 85 10 fc ff ff 	lea    -0x3f0(%rbp),%rax
    173e:	48 83 c0 03          	add    $0x3,%rax
    1742:	48 8d 8d 40 f9 ff ff 	lea    -0x6c0(%rbp),%rcx
    1749:	48 8d 95 68 f9 ff ff 	lea    -0x698(%rbp),%rdx
    1750:	48 8d 35 59 1a 00 00 	lea    0x1a59(%rip),%rsi        # 31b0 <_IO_stdin_used+0x1b0>
    1757:	48 89 c7             	mov    %rax,%rdi
    175a:	b8 00 00 00 00       	mov    $0x0,%eax
    175f:	e8 5c fb ff ff       	call   12c0 <__isoc99_sscanf@plt>
    1764:	48 8b 95 68 f9 ff ff 	mov    -0x698(%rbp),%rdx
    176b:	48 8b 85 58 f9 ff ff 	mov    -0x6a8(%rbp),%rax
    1772:	48 39 c2             	cmp    %rax,%rdx
    1775:	75 0a                	jne    1781 <eval_perf+0x358>
    1777:	c7 85 54 f9 ff ff 01 	movl   $0x1,-0x6ac(%rbp)
    177e:	00 00 00 
    1781:	83 bd 54 f9 ff ff 00 	cmpl   $0x0,-0x6ac(%rbp)
    1788:	74 2a                	je     17b4 <eval_perf+0x38b>
    178a:	48 8b 85 68 f9 ff ff 	mov    -0x698(%rbp),%rax
    1791:	ba fe ff ff ff       	mov    $0xfffffffe,%edx
    1796:	48 39 c2             	cmp    %rax,%rdx
    1799:	72 19                	jb     17b4 <eval_perf+0x38b>
    179b:	48 8b 95 80 f9 ff ff 	mov    -0x680(%rbp),%rdx
    17a2:	48 8d 85 10 fc ff ff 	lea    -0x3f0(%rbp),%rax
    17a9:	48 89 d6             	mov    %rdx,%rsi
    17ac:	48 89 c7             	mov    %rax,%rdi
    17af:	e8 7c fa ff ff       	call   1230 <fputs@plt>
    17b4:	48 8b 95 68 f9 ff ff 	mov    -0x698(%rbp),%rdx
    17bb:	48 8b 85 60 f9 ff ff 	mov    -0x6a0(%rbp),%rax
    17c2:	48 39 c2             	cmp    %rax,%rdx
    17c5:	75 1b                	jne    17e2 <eval_perf+0x3b9>
    17c7:	c7 85 54 f9 ff ff 00 	movl   $0x0,-0x6ac(%rbp)
    17ce:	00 00 00 
    17d1:	48 8b 85 80 f9 ff ff 	mov    -0x680(%rbp),%rax
    17d8:	48 89 c7             	mov    %rax,%rdi
    17db:	e8 00 fa ff ff       	call   11e0 <fclose@plt>
    17e0:	eb 24                	jmp    1806 <eval_perf+0x3dd>
    17e2:	48 8b 95 78 f9 ff ff 	mov    -0x688(%rbp),%rdx
    17e9:	48 8d 85 10 fc ff ff 	lea    -0x3f0(%rbp),%rax
    17f0:	be e8 03 00 00       	mov    $0x3e8,%esi
    17f5:	48 89 c7             	mov    %rax,%rdi
    17f8:	e8 63 fa ff ff       	call   1260 <fgets@plt>
    17fd:	48 85 c0             	test   %rax,%rax
    1800:	0f 85 ee fe ff ff    	jne    16f4 <eval_perf+0x2cb>
    1806:	48 8b 85 78 f9 ff ff 	mov    -0x688(%rbp),%rax
    180d:	48 89 c7             	mov    %rax,%rdi
    1810:	e8 cb f9 ff ff       	call   11e0 <fclose@plt>
    1815:	8b 8d 34 f9 ff ff    	mov    -0x6cc(%rbp),%ecx
    181b:	8b 95 38 f9 ff ff    	mov    -0x6c8(%rbp),%edx
    1821:	8b 85 3c f9 ff ff    	mov    -0x6c4(%rbp),%eax
    1827:	89 c6                	mov    %eax,%esi
    1829:	48 8d 05 88 19 00 00 	lea    0x1988(%rip),%rax        # 31b8 <_IO_stdin_used+0x1b8>
    1830:	48 89 c7             	mov    %rax,%rdi
    1833:	b8 00 00 00 00       	mov    $0x0,%eax
    1838:	e8 d3 f9 ff ff       	call   1210 <printf@plt>
    183d:	8b bd 50 f9 ff ff    	mov    -0x6b0(%rbp),%edi
    1843:	8b b5 34 f9 ff ff    	mov    -0x6cc(%rbp),%esi
    1849:	8b 8d 38 f9 ff ff    	mov    -0x6c8(%rbp),%ecx
    184f:	8b 95 3c f9 ff ff    	mov    -0x6c4(%rbp),%edx
    1855:	48 8d 85 10 fb ff ff 	lea    -0x4f0(%rbp),%rax
    185c:	41 89 f9             	mov    %edi,%r9d
    185f:	41 89 f0             	mov    %esi,%r8d
    1862:	48 8d 35 87 19 00 00 	lea    0x1987(%rip),%rsi        # 31f0 <_IO_stdin_used+0x1f0>
    1869:	48 89 c7             	mov    %rax,%rdi
    186c:	b8 00 00 00 00       	mov    $0x0,%eax
    1871:	e8 8a fa ff ff       	call   1300 <sprintf@plt>
    1876:	48 8d 85 10 fb ff ff 	lea    -0x4f0(%rbp),%rax
    187d:	48 89 c7             	mov    %rax,%rdi
    1880:	e8 7b f9 ff ff       	call   1200 <system@plt>
    1885:	48 8d 05 c7 18 00 00 	lea    0x18c7(%rip),%rax        # 3153 <_IO_stdin_used+0x153>
    188c:	48 89 c6             	mov    %rax,%rsi
    188f:	48 8d 05 90 19 00 00 	lea    0x1990(%rip),%rax        # 3226 <_IO_stdin_used+0x226>
    1896:	48 89 c7             	mov    %rax,%rdi
    1899:	e8 32 fa ff ff       	call   12d0 <fopen@plt>
    189e:	48 89 85 88 f9 ff ff 	mov    %rax,-0x678(%rbp)
    18a5:	48 83 bd 88 f9 ff ff 	cmpq   $0x0,-0x678(%rbp)
    18ac:	00 
    18ad:	75 28                	jne    18d7 <eval_perf+0x4ae>
    18af:	48 8d 05 52 1c 00 00 	lea    0x1c52(%rip),%rax        # 3508 <__PRETTY_FUNCTION__.0>
    18b6:	48 89 c1             	mov    %rax,%rcx
    18b9:	ba 92 00 00 00       	mov    $0x92,%edx
    18be:	48 8d 05 98 18 00 00 	lea    0x1898(%rip),%rax        # 315d <_IO_stdin_used+0x15d>
    18c5:	48 89 c6             	mov    %rax,%rsi
    18c8:	48 8d 05 65 19 00 00 	lea    0x1965(%rip),%rax        # 3234 <_IO_stdin_used+0x234>
    18cf:	48 89 c7             	mov    %rax,%rdi
    18d2:	e8 49 f9 ff ff       	call   1220 <__assert_fail@plt>
    18d7:	48 8d b5 4c f9 ff ff 	lea    -0x6b4(%rbp),%rsi
    18de:	48 8d 8d 48 f9 ff ff 	lea    -0x6b8(%rbp),%rcx
    18e5:	48 8d 95 44 f9 ff ff 	lea    -0x6bc(%rbp),%rdx
    18ec:	48 8b 85 88 f9 ff ff 	mov    -0x678(%rbp),%rax
    18f3:	49 89 f0             	mov    %rsi,%r8
    18f6:	48 8d 35 3d 19 00 00 	lea    0x193d(%rip),%rsi        # 323a <_IO_stdin_used+0x23a>
    18fd:	48 89 c7             	mov    %rax,%rdi
    1900:	b8 00 00 00 00       	mov    $0x0,%eax
    1905:	e8 b6 f8 ff ff       	call   11c0 <__isoc99_fscanf@plt>
    190a:	48 8b 85 88 f9 ff ff 	mov    -0x678(%rbp),%rax
    1911:	48 89 c7             	mov    %rax,%rdi
    1914:	e8 c7 f8 ff ff       	call   11e0 <fclose@plt>
    1919:	8b 85 44 f9 ff ff    	mov    -0x6bc(%rbp),%eax
    191f:	8b 95 50 f9 ff ff    	mov    -0x6b0(%rbp),%edx
    1925:	48 63 d2             	movslq %edx,%rdx
    1928:	48 89 d1             	mov    %rdx,%rcx
    192b:	48 c1 e1 05          	shl    $0x5,%rcx
    192f:	48 8d 15 9e 37 00 00 	lea    0x379e(%rip),%rdx        # 50d4 <func_list+0x14>
    1936:	89 04 11             	mov    %eax,(%rcx,%rdx,1)
    1939:	8b 85 48 f9 ff ff    	mov    -0x6b8(%rbp),%eax
    193f:	8b 95 50 f9 ff ff    	mov    -0x6b0(%rbp),%edx
    1945:	48 63 d2             	movslq %edx,%rdx
    1948:	48 89 d1             	mov    %rdx,%rcx
    194b:	48 c1 e1 05          	shl    $0x5,%rcx
    194f:	48 8d 15 82 37 00 00 	lea    0x3782(%rip),%rdx        # 50d8 <func_list+0x18>
    1956:	89 04 11             	mov    %eax,(%rcx,%rdx,1)
    1959:	8b 85 4c f9 ff ff    	mov    -0x6b4(%rbp),%eax
    195f:	8b 95 50 f9 ff ff    	mov    -0x6b0(%rbp),%edx
    1965:	48 63 d2             	movslq %edx,%rdx
    1968:	48 89 d1             	mov    %rdx,%rcx
    196b:	48 c1 e1 05          	shl    $0x5,%rcx
    196f:	48 8d 15 66 37 00 00 	lea    0x3766(%rip),%rdx        # 50dc <func_list+0x1c>
    1976:	89 04 11             	mov    %eax,(%rcx,%rdx,1)
    1979:	8b bd 4c f9 ff ff    	mov    -0x6b4(%rbp),%edi
    197f:	8b b5 48 f9 ff ff    	mov    -0x6b8(%rbp),%esi
    1985:	8b 8d 44 f9 ff ff    	mov    -0x6bc(%rbp),%ecx
    198b:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    1991:	48 98                	cltq
    1993:	48 c1 e0 05          	shl    $0x5,%rax
    1997:	48 89 c2             	mov    %rax,%rdx
    199a:	48 8d 05 27 37 00 00 	lea    0x3727(%rip),%rax        # 50c8 <func_list+0x8>
    19a1:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
    19a5:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    19ab:	41 89 f9             	mov    %edi,%r9d
    19ae:	41 89 f0             	mov    %esi,%r8d
    19b1:	89 c6                	mov    %eax,%esi
    19b3:	48 8d 05 8e 18 00 00 	lea    0x188e(%rip),%rax        # 3248 <_IO_stdin_used+0x248>
    19ba:	48 89 c7             	mov    %rax,%rdi
    19bd:	b8 00 00 00 00       	mov    $0x0,%eax
    19c2:	e8 49 f8 ff ff       	call   1210 <printf@plt>
    19c7:	8b 05 43 36 00 00    	mov    0x3643(%rip),%eax        # 5010 <results>
    19cd:	39 85 50 f9 ff ff    	cmp    %eax,-0x6b0(%rbp)
    19d3:	75 0c                	jne    19e1 <eval_perf+0x5b8>
    19d5:	8b 85 48 f9 ff ff    	mov    -0x6b8(%rbp),%eax
    19db:	89 05 37 36 00 00    	mov    %eax,0x3637(%rip)        # 5018 <results+0x8>
    19e1:	83 85 50 f9 ff ff 01 	addl   $0x1,-0x6b0(%rbp)
    19e8:	8b 05 52 43 00 00    	mov    0x4352(%rip),%eax        # 5d40 <func_counter>
    19ee:	39 85 50 f9 ff ff    	cmp    %eax,-0x6b0(%rbp)
    19f4:	0f 8c 78 fa ff ff    	jl     1472 <eval_perf+0x49>
    19fa:	90                   	nop
    19fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19ff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1a06:	00 00 
    1a08:	74 05                	je     1a0f <eval_perf+0x5e6>
    1a0a:	e8 e1 f7 ff ff       	call   11f0 <__stack_chk_fail@plt>
    1a0f:	c9                   	leave
    1a10:	c3                   	ret

0000000000001a11 <usage>:
    1a11:	f3 0f 1e fa          	endbr64
    1a15:	55                   	push   %rbp
    1a16:	48 89 e5             	mov    %rsp,%rbp
    1a19:	48 83 ec 10          	sub    $0x10,%rsp
    1a1d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1a21:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a25:	48 8b 00             	mov    (%rax),%rax
    1a28:	48 89 c6             	mov    %rax,%rsi
    1a2b:	48 8d 05 46 18 00 00 	lea    0x1846(%rip),%rax        # 3278 <_IO_stdin_used+0x278>
    1a32:	48 89 c7             	mov    %rax,%rdi
    1a35:	b8 00 00 00 00       	mov    $0x0,%eax
    1a3a:	e8 d1 f7 ff ff       	call   1210 <printf@plt>
    1a3f:	48 8d 05 56 18 00 00 	lea    0x1856(%rip),%rax        # 329c <_IO_stdin_used+0x29c>
    1a46:	48 89 c7             	mov    %rax,%rdi
    1a49:	e8 82 f7 ff ff       	call   11d0 <puts@plt>
    1a4e:	48 8d 05 53 18 00 00 	lea    0x1853(%rip),%rax        # 32a8 <_IO_stdin_used+0x2a8>
    1a55:	48 89 c7             	mov    %rax,%rdi
    1a58:	e8 73 f7 ff ff       	call   11d0 <puts@plt>
    1a5d:	be 00 01 00 00       	mov    $0x100,%esi
    1a62:	48 8d 05 67 18 00 00 	lea    0x1867(%rip),%rax        # 32d0 <_IO_stdin_used+0x2d0>
    1a69:	48 89 c7             	mov    %rax,%rdi
    1a6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1a71:	e8 9a f7 ff ff       	call   1210 <printf@plt>
    1a76:	be 00 01 00 00       	mov    $0x100,%esi
    1a7b:	48 8d 05 7e 18 00 00 	lea    0x187e(%rip),%rax        # 3300 <_IO_stdin_used+0x300>
    1a82:	48 89 c7             	mov    %rax,%rdi
    1a85:	b8 00 00 00 00       	mov    $0x0,%eax
    1a8a:	e8 81 f7 ff ff       	call   1210 <printf@plt>
    1a8f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a93:	48 8b 00             	mov    (%rax),%rax
    1a96:	48 89 c6             	mov    %rax,%rsi
    1a99:	48 8d 05 92 18 00 00 	lea    0x1892(%rip),%rax        # 3332 <_IO_stdin_used+0x332>
    1aa0:	48 89 c7             	mov    %rax,%rdi
    1aa3:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa8:	e8 63 f7 ff ff       	call   1210 <printf@plt>
    1aad:	90                   	nop
    1aae:	c9                   	leave
    1aaf:	c3                   	ret

0000000000001ab0 <sigsegv_handler>:
    1ab0:	f3 0f 1e fa          	endbr64
    1ab4:	55                   	push   %rbp
    1ab5:	48 89 e5             	mov    %rsp,%rbp
    1ab8:	48 83 ec 10          	sub    $0x10,%rsp
    1abc:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1abf:	48 8d 05 83 18 00 00 	lea    0x1883(%rip),%rax        # 3349 <_IO_stdin_used+0x349>
    1ac6:	48 89 c7             	mov    %rax,%rdi
    1ac9:	e8 02 f7 ff ff       	call   11d0 <puts@plt>
    1ace:	48 8d 05 8f 18 00 00 	lea    0x188f(%rip),%rax        # 3364 <_IO_stdin_used+0x364>
    1ad5:	48 89 c7             	mov    %rax,%rdi
    1ad8:	e8 f3 f6 ff ff       	call   11d0 <puts@plt>
    1add:	48 8b 05 7c 35 00 00 	mov    0x357c(%rip),%rax        # 5060 <stdout@GLIBC_2.2.5>
    1ae4:	48 89 c7             	mov    %rax,%rdi
    1ae7:	e8 c4 f7 ff ff       	call   12b0 <fflush@plt>
    1aec:	bf 01 00 00 00       	mov    $0x1,%edi
    1af1:	e8 1a f8 ff ff       	call   1310 <exit@plt>

0000000000001af6 <sigalrm_handler>:
    1af6:	f3 0f 1e fa          	endbr64
    1afa:	55                   	push   %rbp
    1afb:	48 89 e5             	mov    %rsp,%rbp
    1afe:	48 83 ec 10          	sub    $0x10,%rsp
    1b02:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1b05:	48 8d 05 6f 18 00 00 	lea    0x186f(%rip),%rax        # 337b <_IO_stdin_used+0x37b>
    1b0c:	48 89 c7             	mov    %rax,%rdi
    1b0f:	e8 bc f6 ff ff       	call   11d0 <puts@plt>
    1b14:	48 8d 05 49 18 00 00 	lea    0x1849(%rip),%rax        # 3364 <_IO_stdin_used+0x364>
    1b1b:	48 89 c7             	mov    %rax,%rdi
    1b1e:	e8 ad f6 ff ff       	call   11d0 <puts@plt>
    1b23:	48 8b 05 36 35 00 00 	mov    0x3536(%rip),%rax        # 5060 <stdout@GLIBC_2.2.5>
    1b2a:	48 89 c7             	mov    %rax,%rdi
    1b2d:	e8 7e f7 ff ff       	call   12b0 <fflush@plt>
    1b32:	bf 01 00 00 00       	mov    $0x1,%edi
    1b37:	e8 d4 f7 ff ff       	call   1310 <exit@plt>

0000000000001b3c <main>:
    1b3c:	f3 0f 1e fa          	endbr64
    1b40:	55                   	push   %rbp
    1b41:	48 89 e5             	mov    %rsp,%rbp
    1b44:	48 83 ec 20          	sub    $0x20,%rsp
    1b48:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1b4b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1b4f:	eb 74                	jmp    1bc5 <main+0x89>
    1b51:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
    1b55:	83 f8 68             	cmp    $0x68,%eax
    1b58:	74 3f                	je     1b99 <main+0x5d>
    1b5a:	83 f8 68             	cmp    $0x68,%eax
    1b5d:	7f 50                	jg     1baf <main+0x73>
    1b5f:	83 f8 4d             	cmp    $0x4d,%eax
    1b62:	74 07                	je     1b6b <main+0x2f>
    1b64:	83 f8 4e             	cmp    $0x4e,%eax
    1b67:	74 19                	je     1b82 <main+0x46>
    1b69:	eb 44                	jmp    1baf <main+0x73>
    1b6b:	48 8b 05 0e 35 00 00 	mov    0x350e(%rip),%rax        # 5080 <optarg@GLIBC_2.2.5>
    1b72:	48 89 c7             	mov    %rax,%rdi
    1b75:	e8 76 f7 ff ff       	call   12f0 <atoi@plt>
    1b7a:	89 05 2c 35 00 00    	mov    %eax,0x352c(%rip)        # 50ac <M>
    1b80:	eb 43                	jmp    1bc5 <main+0x89>
    1b82:	48 8b 05 f7 34 00 00 	mov    0x34f7(%rip),%rax        # 5080 <optarg@GLIBC_2.2.5>
    1b89:	48 89 c7             	mov    %rax,%rdi
    1b8c:	e8 5f f7 ff ff       	call   12f0 <atoi@plt>
    1b91:	89 05 19 35 00 00    	mov    %eax,0x3519(%rip)        # 50b0 <N>
    1b97:	eb 2c                	jmp    1bc5 <main+0x89>
    1b99:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1b9d:	48 89 c7             	mov    %rax,%rdi
    1ba0:	e8 6c fe ff ff       	call   1a11 <usage>
    1ba5:	bf 00 00 00 00       	mov    $0x0,%edi
    1baa:	e8 61 f7 ff ff       	call   1310 <exit@plt>
    1baf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1bb3:	48 89 c7             	mov    %rax,%rdi
    1bb6:	e8 56 fe ff ff       	call   1a11 <usage>
    1bbb:	bf 01 00 00 00       	mov    $0x1,%edi
    1bc0:	e8 4b f7 ff ff       	call   1310 <exit@plt>
    1bc5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1bc9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1bcc:	48 8d 15 c2 17 00 00 	lea    0x17c2(%rip),%rdx        # 3395 <_IO_stdin_used+0x395>
    1bd3:	48 89 ce             	mov    %rcx,%rsi
    1bd6:	89 c7                	mov    %eax,%edi
    1bd8:	e8 03 f7 ff ff       	call   12e0 <getopt@plt>
    1bdd:	88 45 ff             	mov    %al,-0x1(%rbp)
    1be0:	80 7d ff ff          	cmpb   $0xff,-0x1(%rbp)
    1be4:	0f 85 67 ff ff ff    	jne    1b51 <main+0x15>
    1bea:	8b 05 bc 34 00 00    	mov    0x34bc(%rip),%eax        # 50ac <M>
    1bf0:	85 c0                	test   %eax,%eax
    1bf2:	74 0a                	je     1bfe <main+0xc2>
    1bf4:	8b 05 b6 34 00 00    	mov    0x34b6(%rip),%eax        # 50b0 <N>
    1bfa:	85 c0                	test   %eax,%eax
    1bfc:	75 25                	jne    1c23 <main+0xe7>
    1bfe:	48 8d 05 9b 17 00 00 	lea    0x179b(%rip),%rax        # 33a0 <_IO_stdin_used+0x3a0>
    1c05:	48 89 c7             	mov    %rax,%rdi
    1c08:	e8 c3 f5 ff ff       	call   11d0 <puts@plt>
    1c0d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c11:	48 89 c7             	mov    %rax,%rdi
    1c14:	e8 f8 fd ff ff       	call   1a11 <usage>
    1c19:	bf 01 00 00 00       	mov    $0x1,%edi
    1c1e:	e8 ed f6 ff ff       	call   1310 <exit@plt>
    1c23:	8b 05 83 34 00 00    	mov    0x3483(%rip),%eax        # 50ac <M>
    1c29:	3d 00 01 00 00       	cmp    $0x100,%eax
    1c2e:	7f 0d                	jg     1c3d <main+0x101>
    1c30:	8b 05 7a 34 00 00    	mov    0x347a(%rip),%eax        # 50b0 <N>
    1c36:	3d 00 01 00 00       	cmp    $0x100,%eax
    1c3b:	7e 2f                	jle    1c6c <main+0x130>
    1c3d:	be 00 01 00 00       	mov    $0x100,%esi
    1c42:	48 8d 05 78 17 00 00 	lea    0x1778(%rip),%rax        # 33c1 <_IO_stdin_used+0x3c1>
    1c49:	48 89 c7             	mov    %rax,%rdi
    1c4c:	b8 00 00 00 00       	mov    $0x0,%eax
    1c51:	e8 ba f5 ff ff       	call   1210 <printf@plt>
    1c56:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1c5a:	48 89 c7             	mov    %rax,%rdi
    1c5d:	e8 af fd ff ff       	call   1a11 <usage>
    1c62:	bf 01 00 00 00       	mov    $0x1,%edi
    1c67:	e8 a4 f6 ff ff       	call   1310 <exit@plt>
    1c6c:	48 8d 05 3d fe ff ff 	lea    -0x1c3(%rip),%rax        # 1ab0 <sigsegv_handler>
    1c73:	48 89 c6             	mov    %rax,%rsi
    1c76:	bf 0b 00 00 00       	mov    $0xb,%edi
    1c7b:	e8 10 f6 ff ff       	call   1290 <__sysv_signal@plt>
    1c80:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    1c84:	75 2d                	jne    1cb3 <main+0x177>
    1c86:	48 8b 05 13 34 00 00 	mov    0x3413(%rip),%rax        # 50a0 <stderr@GLIBC_2.2.5>
    1c8d:	48 89 c1             	mov    %rax,%rcx
    1c90:	ba 22 00 00 00       	mov    $0x22,%edx
    1c95:	be 01 00 00 00       	mov    $0x1,%esi
    1c9a:	48 8d 05 3f 17 00 00 	lea    0x173f(%rip),%rax        # 33e0 <_IO_stdin_used+0x3e0>
    1ca1:	48 89 c7             	mov    %rax,%rdi
    1ca4:	e8 77 f6 ff ff       	call   1320 <fwrite@plt>
    1ca9:	bf 01 00 00 00       	mov    $0x1,%edi
    1cae:	e8 5d f6 ff ff       	call   1310 <exit@plt>
    1cb3:	48 8d 05 3c fe ff ff 	lea    -0x1c4(%rip),%rax        # 1af6 <sigalrm_handler>
    1cba:	48 89 c6             	mov    %rax,%rsi
    1cbd:	bf 0e 00 00 00       	mov    $0xe,%edi
    1cc2:	e8 c9 f5 ff ff       	call   1290 <__sysv_signal@plt>
    1cc7:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    1ccb:	75 2d                	jne    1cfa <main+0x1be>
    1ccd:	48 8b 05 cc 33 00 00 	mov    0x33cc(%rip),%rax        # 50a0 <stderr@GLIBC_2.2.5>
    1cd4:	48 89 c1             	mov    %rax,%rcx
    1cd7:	ba 22 00 00 00       	mov    $0x22,%edx
    1cdc:	be 01 00 00 00       	mov    $0x1,%esi
    1ce1:	48 8d 05 f8 16 00 00 	lea    0x16f8(%rip),%rax        # 33e0 <_IO_stdin_used+0x3e0>
    1ce8:	48 89 c7             	mov    %rax,%rdi
    1ceb:	e8 30 f6 ff ff       	call   1320 <fwrite@plt>
    1cf0:	bf 01 00 00 00       	mov    $0x1,%edi
    1cf5:	e8 16 f6 ff ff       	call   1310 <exit@plt>
    1cfa:	bf 78 00 00 00       	mov    $0x78,%edi
    1cff:	e8 3c f5 ff ff       	call   1240 <alarm@plt>
    1d04:	ba 05 00 00 00       	mov    $0x5,%edx
    1d09:	be 01 00 00 00       	mov    $0x1,%esi
    1d0e:	bf 05 00 00 00       	mov    $0x5,%edi
    1d13:	e8 11 f7 ff ff       	call   1429 <eval_perf>
    1d18:	8b 05 f2 32 00 00    	mov    0x32f2(%rip),%eax        # 5010 <results>
    1d1e:	83 f8 ff             	cmp    $0xffffffff,%eax
    1d21:	75 3e                	jne    1d61 <main+0x225>
    1d23:	48 8d 05 de 16 00 00 	lea    0x16de(%rip),%rax        # 3408 <_IO_stdin_used+0x408>
    1d2a:	48 89 c7             	mov    %rax,%rdi
    1d2d:	e8 9e f4 ff ff       	call   11d0 <puts@plt>
    1d32:	48 8d 05 cf 12 00 00 	lea    0x12cf(%rip),%rax        # 3008 <_IO_stdin_used+0x8>
    1d39:	48 89 c6             	mov    %rax,%rsi
    1d3c:	48 8d 05 05 17 00 00 	lea    0x1705(%rip),%rax        # 3448 <_IO_stdin_used+0x448>
    1d43:	48 89 c7             	mov    %rax,%rdi
    1d46:	b8 00 00 00 00       	mov    $0x0,%eax
    1d4b:	e8 c0 f4 ff ff       	call   1210 <printf@plt>
    1d50:	48 8d 05 2e 17 00 00 	lea    0x172e(%rip),%rax        # 3485 <_IO_stdin_used+0x485>
    1d57:	48 89 c7             	mov    %rax,%rdi
    1d5a:	e8 71 f4 ff ff       	call   11d0 <puts@plt>
    1d5f:	eb 4a                	jmp    1dab <main+0x26f>
    1d61:	8b 0d b1 32 00 00    	mov    0x32b1(%rip),%ecx        # 5018 <results+0x8>
    1d67:	8b 15 a7 32 00 00    	mov    0x32a7(%rip),%edx        # 5014 <results+0x4>
    1d6d:	8b 05 9d 32 00 00    	mov    0x329d(%rip),%eax        # 5010 <results>
    1d73:	89 c6                	mov    %eax,%esi
    1d75:	48 8d 05 24 17 00 00 	lea    0x1724(%rip),%rax        # 34a0 <_IO_stdin_used+0x4a0>
    1d7c:	48 89 c7             	mov    %rax,%rdi
    1d7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d84:	e8 87 f4 ff ff       	call   1210 <printf@plt>
    1d89:	8b 15 89 32 00 00    	mov    0x3289(%rip),%edx        # 5018 <results+0x8>
    1d8f:	8b 05 7f 32 00 00    	mov    0x327f(%rip),%eax        # 5014 <results+0x4>
    1d95:	89 c6                	mov    %eax,%esi
    1d97:	48 8d 05 48 17 00 00 	lea    0x1748(%rip),%rax        # 34e6 <_IO_stdin_used+0x4e6>
    1d9e:	48 89 c7             	mov    %rax,%rdi
    1da1:	b8 00 00 00 00       	mov    $0x0,%eax
    1da6:	e8 65 f4 ff ff       	call   1210 <printf@plt>
    1dab:	b8 00 00 00 00       	mov    $0x0,%eax
    1db0:	c9                   	leave
    1db1:	c3                   	ret

0000000000001db2 <printSummary>:
    1db2:	f3 0f 1e fa          	endbr64
    1db6:	55                   	push   %rbp
    1db7:	48 89 e5             	mov    %rsp,%rbp
    1dba:	48 83 ec 20          	sub    $0x20,%rsp
    1dbe:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1dc1:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1dc4:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    1dc7:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    1dca:	8b 55 e8             	mov    -0x18(%rbp),%edx
    1dcd:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1dd0:	89 c6                	mov    %eax,%esi
    1dd2:	48 8d 05 3f 17 00 00 	lea    0x173f(%rip),%rax        # 3518 <__PRETTY_FUNCTION__.0+0x10>
    1dd9:	48 89 c7             	mov    %rax,%rdi
    1ddc:	b8 00 00 00 00       	mov    $0x0,%eax
    1de1:	e8 2a f4 ff ff       	call   1210 <printf@plt>
    1de6:	48 8d 05 4b 17 00 00 	lea    0x174b(%rip),%rax        # 3538 <__PRETTY_FUNCTION__.0+0x30>
    1ded:	48 89 c6             	mov    %rax,%rsi
    1df0:	48 8d 05 43 17 00 00 	lea    0x1743(%rip),%rax        # 353a <__PRETTY_FUNCTION__.0+0x32>
    1df7:	48 89 c7             	mov    %rax,%rdi
    1dfa:	e8 d1 f4 ff ff       	call   12d0 <fopen@plt>
    1dff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1e03:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1e08:	75 28                	jne    1e32 <printSummary+0x80>
    1e0a:	48 8d 05 57 17 00 00 	lea    0x1757(%rip),%rax        # 3568 <__PRETTY_FUNCTION__.0>
    1e11:	48 89 c1             	mov    %rax,%rcx
    1e14:	ba 15 00 00 00       	mov    $0x15,%edx
    1e19:	48 8d 05 28 17 00 00 	lea    0x1728(%rip),%rax        # 3548 <__PRETTY_FUNCTION__.0+0x40>
    1e20:	48 89 c6             	mov    %rax,%rsi
    1e23:	48 8d 05 29 17 00 00 	lea    0x1729(%rip),%rax        # 3553 <__PRETTY_FUNCTION__.0+0x4b>
    1e2a:	48 89 c7             	mov    %rax,%rdi
    1e2d:	e8 ee f3 ff ff       	call   1220 <__assert_fail@plt>
    1e32:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    1e35:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    1e38:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1e3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e3f:	41 89 f0             	mov    %esi,%r8d
    1e42:	48 8d 35 14 17 00 00 	lea    0x1714(%rip),%rsi        # 355d <__PRETTY_FUNCTION__.0+0x55>
    1e49:	48 89 c7             	mov    %rax,%rdi
    1e4c:	b8 00 00 00 00       	mov    $0x0,%eax
    1e51:	e8 2a f4 ff ff       	call   1280 <fprintf@plt>
    1e56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e5a:	48 89 c7             	mov    %rax,%rdi
    1e5d:	e8 7e f3 ff ff       	call   11e0 <fclose@plt>
    1e62:	90                   	nop
    1e63:	c9                   	leave
    1e64:	c3                   	ret

0000000000001e65 <initMatrix>:
    1e65:	f3 0f 1e fa          	endbr64
    1e69:	55                   	push   %rbp
    1e6a:	48 89 e5             	mov    %rsp,%rbp
    1e6d:	41 55                	push   %r13
    1e6f:	41 54                	push   %r12
    1e71:	53                   	push   %rbx
    1e72:	48 83 ec 48          	sub    $0x48,%rsp
    1e76:	89 7d bc             	mov    %edi,-0x44(%rbp)
    1e79:	89 75 b8             	mov    %esi,-0x48(%rbp)
    1e7c:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    1e80:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    1e84:	8b 5d bc             	mov    -0x44(%rbp),%ebx
    1e87:	48 63 c3             	movslq %ebx,%rax
    1e8a:	48 83 e8 01          	sub    $0x1,%rax
    1e8e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1e92:	44 8b 65 b8          	mov    -0x48(%rbp),%r12d
    1e96:	49 63 c4             	movslq %r12d,%rax
    1e99:	48 83 e8 01          	sub    $0x1,%rax
    1e9d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1ea1:	bf 00 00 00 00       	mov    $0x0,%edi
    1ea6:	e8 f5 f3 ff ff       	call   12a0 <time@plt>
    1eab:	89 c7                	mov    %eax,%edi
    1ead:	e8 9e f3 ff ff       	call   1250 <srand@plt>
    1eb2:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    1eb9:	eb 73                	jmp    1f2e <initMatrix+0xc9>
    1ebb:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    1ec2:	eb 5e                	jmp    1f22 <initMatrix+0xbd>
    1ec4:	8b 45 c8             	mov    -0x38(%rbp),%eax
    1ec7:	48 63 d0             	movslq %eax,%rdx
    1eca:	48 63 c3             	movslq %ebx,%rax
    1ecd:	48 0f af c2          	imul   %rdx,%rax
    1ed1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1ed8:	00 
    1ed9:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1edd:	4c 8d 2c 02          	lea    (%rdx,%rax,1),%r13
    1ee1:	e8 4a f4 ff ff       	call   1330 <rand@plt>
    1ee6:	8b 55 cc             	mov    -0x34(%rbp),%edx
    1ee9:	48 63 d2             	movslq %edx,%rdx
    1eec:	41 89 44 95 00       	mov    %eax,0x0(%r13,%rdx,4)
    1ef1:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1ef4:	48 63 d0             	movslq %eax,%rdx
    1ef7:	49 63 c4             	movslq %r12d,%rax
    1efa:	48 0f af c2          	imul   %rdx,%rax
    1efe:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1f05:	00 
    1f06:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1f0a:	4c 8d 2c 02          	lea    (%rdx,%rax,1),%r13
    1f0e:	e8 1d f4 ff ff       	call   1330 <rand@plt>
    1f13:	8b 55 c8             	mov    -0x38(%rbp),%edx
    1f16:	48 63 d2             	movslq %edx,%rdx
    1f19:	41 89 44 95 00       	mov    %eax,0x0(%r13,%rdx,4)
    1f1e:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    1f22:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1f25:	3b 45 bc             	cmp    -0x44(%rbp),%eax
    1f28:	7c 9a                	jl     1ec4 <initMatrix+0x5f>
    1f2a:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    1f2e:	8b 45 c8             	mov    -0x38(%rbp),%eax
    1f31:	3b 45 b8             	cmp    -0x48(%rbp),%eax
    1f34:	7c 85                	jl     1ebb <initMatrix+0x56>
    1f36:	90                   	nop
    1f37:	90                   	nop
    1f38:	48 83 c4 48          	add    $0x48,%rsp
    1f3c:	5b                   	pop    %rbx
    1f3d:	41 5c                	pop    %r12
    1f3f:	41 5d                	pop    %r13
    1f41:	5d                   	pop    %rbp
    1f42:	c3                   	ret

0000000000001f43 <randMatrix>:
    1f43:	f3 0f 1e fa          	endbr64
    1f47:	55                   	push   %rbp
    1f48:	48 89 e5             	mov    %rsp,%rbp
    1f4b:	41 54                	push   %r12
    1f4d:	53                   	push   %rbx
    1f4e:	48 83 ec 20          	sub    $0x20,%rsp
    1f52:	89 7d dc             	mov    %edi,-0x24(%rbp)
    1f55:	89 75 d8             	mov    %esi,-0x28(%rbp)
    1f58:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    1f5c:	8b 5d dc             	mov    -0x24(%rbp),%ebx
    1f5f:	48 63 c3             	movslq %ebx,%rax
    1f62:	48 83 e8 01          	sub    $0x1,%rax
    1f66:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1f6a:	bf 00 00 00 00       	mov    $0x0,%edi
    1f6f:	e8 2c f3 ff ff       	call   12a0 <time@plt>
    1f74:	89 c7                	mov    %eax,%edi
    1f76:	e8 d5 f2 ff ff       	call   1250 <srand@plt>
    1f7b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    1f82:	eb 45                	jmp    1fc9 <randMatrix+0x86>
    1f84:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    1f8b:	eb 30                	jmp    1fbd <randMatrix+0x7a>
    1f8d:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1f90:	48 63 d0             	movslq %eax,%rdx
    1f93:	48 63 c3             	movslq %ebx,%rax
    1f96:	48 0f af c2          	imul   %rdx,%rax
    1f9a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1fa1:	00 
    1fa2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1fa6:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
    1faa:	e8 81 f3 ff ff       	call   1330 <rand@plt>
    1faf:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    1fb2:	48 63 d2             	movslq %edx,%rdx
    1fb5:	41 89 04 94          	mov    %eax,(%r12,%rdx,4)
    1fb9:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    1fbd:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1fc0:	3b 45 dc             	cmp    -0x24(%rbp),%eax
    1fc3:	7c c8                	jl     1f8d <randMatrix+0x4a>
    1fc5:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    1fc9:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1fcc:	3b 45 d8             	cmp    -0x28(%rbp),%eax
    1fcf:	7c b3                	jl     1f84 <randMatrix+0x41>
    1fd1:	90                   	nop
    1fd2:	90                   	nop
    1fd3:	48 83 c4 20          	add    $0x20,%rsp
    1fd7:	5b                   	pop    %rbx
    1fd8:	41 5c                	pop    %r12
    1fda:	5d                   	pop    %rbp
    1fdb:	c3                   	ret

0000000000001fdc <correctTrans>:
    1fdc:	f3 0f 1e fa          	endbr64
    1fe0:	55                   	push   %rbp
    1fe1:	48 89 e5             	mov    %rsp,%rbp
    1fe4:	89 7d dc             	mov    %edi,-0x24(%rbp)
    1fe7:	89 75 d8             	mov    %esi,-0x28(%rbp)
    1fea:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    1fee:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    1ff2:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1ff5:	48 63 d0             	movslq %eax,%rdx
    1ff8:	48 83 ea 01          	sub    $0x1,%rdx
    1ffc:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    2000:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2003:	48 63 ca             	movslq %edx,%rcx
    2006:	48 83 e9 01          	sub    $0x1,%rcx
    200a:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    200e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    2015:	eb 6a                	jmp    2081 <correctTrans+0xa5>
    2017:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    201e:	eb 55                	jmp    2075 <correctTrans+0x99>
    2020:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2023:	48 63 f1             	movslq %ecx,%rsi
    2026:	48 63 c8             	movslq %eax,%rcx
    2029:	48 0f af ce          	imul   %rsi,%rcx
    202d:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2034:	00 
    2035:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    2039:	48 01 ce             	add    %rcx,%rsi
    203c:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    203f:	48 63 c9             	movslq %ecx,%rcx
    2042:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2045:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    2048:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    204b:	48 63 f1             	movslq %ecx,%rsi
    204e:	48 63 ca             	movslq %edx,%rcx
    2051:	48 0f af ce          	imul   %rsi,%rcx
    2055:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    205c:	00 
    205d:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    2061:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2065:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2068:	48 63 c9             	movslq %ecx,%rcx
    206b:	8b 75 ec             	mov    -0x14(%rbp),%esi
    206e:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2071:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    2075:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2078:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
    207b:	7c a3                	jl     2020 <correctTrans+0x44>
    207d:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    2081:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2084:	3b 4d d8             	cmp    -0x28(%rbp),%ecx
    2087:	7c 8e                	jl     2017 <correctTrans+0x3b>
    2089:	90                   	nop
    208a:	90                   	nop
    208b:	5d                   	pop    %rbp
    208c:	c3                   	ret

000000000000208d <registerTransFunction>:
    208d:	f3 0f 1e fa          	endbr64
    2091:	55                   	push   %rbp
    2092:	48 89 e5             	mov    %rsp,%rbp
    2095:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2099:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    209d:	8b 05 9d 3c 00 00    	mov    0x3c9d(%rip),%eax        # 5d40 <func_counter>
    20a3:	48 98                	cltq
    20a5:	48 c1 e0 05          	shl    $0x5,%rax
    20a9:	48 89 c1             	mov    %rax,%rcx
    20ac:	48 8d 15 0d 30 00 00 	lea    0x300d(%rip),%rdx        # 50c0 <func_list>
    20b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    20b7:	48 89 04 11          	mov    %rax,(%rcx,%rdx,1)
    20bb:	8b 05 7f 3c 00 00    	mov    0x3c7f(%rip),%eax        # 5d40 <func_counter>
    20c1:	48 98                	cltq
    20c3:	48 c1 e0 05          	shl    $0x5,%rax
    20c7:	48 89 c1             	mov    %rax,%rcx
    20ca:	48 8d 15 f7 2f 00 00 	lea    0x2ff7(%rip),%rdx        # 50c8 <func_list+0x8>
    20d1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    20d5:	48 89 04 11          	mov    %rax,(%rcx,%rdx,1)
    20d9:	8b 05 61 3c 00 00    	mov    0x3c61(%rip),%eax        # 5d40 <func_counter>
    20df:	48 98                	cltq
    20e1:	48 c1 e0 05          	shl    $0x5,%rax
    20e5:	48 89 c2             	mov    %rax,%rdx
    20e8:	48 8d 05 e1 2f 00 00 	lea    0x2fe1(%rip),%rax        # 50d0 <func_list+0x10>
    20ef:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    20f3:	8b 05 47 3c 00 00    	mov    0x3c47(%rip),%eax        # 5d40 <func_counter>
    20f9:	48 98                	cltq
    20fb:	48 c1 e0 05          	shl    $0x5,%rax
    20ff:	48 89 c2             	mov    %rax,%rdx
    2102:	48 8d 05 cb 2f 00 00 	lea    0x2fcb(%rip),%rax        # 50d4 <func_list+0x14>
    2109:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    2110:	8b 05 2a 3c 00 00    	mov    0x3c2a(%rip),%eax        # 5d40 <func_counter>
    2116:	48 98                	cltq
    2118:	48 c1 e0 05          	shl    $0x5,%rax
    211c:	48 89 c2             	mov    %rax,%rdx
    211f:	48 8d 05 b2 2f 00 00 	lea    0x2fb2(%rip),%rax        # 50d8 <func_list+0x18>
    2126:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    212d:	8b 05 0d 3c 00 00    	mov    0x3c0d(%rip),%eax        # 5d40 <func_counter>
    2133:	48 98                	cltq
    2135:	48 c1 e0 05          	shl    $0x5,%rax
    2139:	48 89 c2             	mov    %rax,%rdx
    213c:	48 8d 05 99 2f 00 00 	lea    0x2f99(%rip),%rax        # 50dc <func_list+0x1c>
    2143:	c7 04 02 00 00 00 00 	movl   $0x0,(%rdx,%rax,1)
    214a:	8b 05 f0 3b 00 00    	mov    0x3bf0(%rip),%eax        # 5d40 <func_counter>
    2150:	83 c0 01             	add    $0x1,%eax
    2153:	89 05 e7 3b 00 00    	mov    %eax,0x3be7(%rip)        # 5d40 <func_counter>
    2159:	90                   	nop
    215a:	5d                   	pop    %rbp
    215b:	c3                   	ret

000000000000215c <transpose_submit>:
    215c:	f3 0f 1e fa          	endbr64
    2160:	55                   	push   %rbp
    2161:	48 89 e5             	mov    %rsp,%rbp
    2164:	48 83 ec 30          	sub    $0x30,%rsp
    2168:	89 7d ec             	mov    %edi,-0x14(%rbp)
    216b:	89 75 e8             	mov    %esi,-0x18(%rbp)
    216e:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    2172:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    2176:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2179:	48 98                	cltq
    217b:	48 83 e8 01          	sub    $0x1,%rax
    217f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2183:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2186:	48 98                	cltq
    2188:	48 83 e8 01          	sub    $0x1,%rax
    218c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2190:	83 7d ec 20          	cmpl   $0x20,-0x14(%rbp)
    2194:	75 1f                	jne    21b5 <transpose_submit+0x59>
    2196:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    219a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    219e:	48 89 d1             	mov    %rdx,%rcx
    21a1:	48 89 c2             	mov    %rax,%rdx
    21a4:	be 20 00 00 00       	mov    $0x20,%esi
    21a9:	bf 20 00 00 00       	mov    $0x20,%edi
    21ae:	e8 4d 00 00 00       	call   2200 <subtask1>
    21b3:	eb 48                	jmp    21fd <transpose_submit+0xa1>
    21b5:	83 7d ec 40          	cmpl   $0x40,-0x14(%rbp)
    21b9:	75 1f                	jne    21da <transpose_submit+0x7e>
    21bb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    21bf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    21c3:	48 89 d1             	mov    %rdx,%rcx
    21c6:	48 89 c2             	mov    %rax,%rdx
    21c9:	be 40 00 00 00       	mov    $0x40,%esi
    21ce:	bf 40 00 00 00       	mov    $0x40,%edi
    21d3:	e8 ae 03 00 00       	call   2586 <subtask2>
    21d8:	eb 23                	jmp    21fd <transpose_submit+0xa1>
    21da:	83 7d ec 3d          	cmpl   $0x3d,-0x14(%rbp)
    21de:	75 1d                	jne    21fd <transpose_submit+0xa1>
    21e0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    21e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    21e8:	48 89 d1             	mov    %rdx,%rcx
    21eb:	48 89 c2             	mov    %rax,%rdx
    21ee:	be 43 00 00 00       	mov    $0x43,%esi
    21f3:	bf 3d 00 00 00       	mov    $0x3d,%edi
    21f8:	e8 0f 07 00 00       	call   290c <subtask3>
    21fd:	90                   	nop
    21fe:	c9                   	leave
    21ff:	c3                   	ret

0000000000002200 <subtask1>:
    2200:	f3 0f 1e fa          	endbr64
    2204:	55                   	push   %rbp
    2205:	48 89 e5             	mov    %rsp,%rbp
    2208:	89 7d bc             	mov    %edi,-0x44(%rbp)
    220b:	89 75 b8             	mov    %esi,-0x48(%rbp)
    220e:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    2212:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    2216:	8b 45 bc             	mov    -0x44(%rbp),%eax
    2219:	48 63 d0             	movslq %eax,%rdx
    221c:	48 83 ea 01          	sub    $0x1,%rdx
    2220:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    2224:	8b 55 b8             	mov    -0x48(%rbp),%edx
    2227:	48 63 ca             	movslq %edx,%rcx
    222a:	48 83 e9 01          	sub    $0x1,%rcx
    222e:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    2232:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    2239:	e9 3a 03 00 00       	jmp    2578 <subtask1+0x378>
    223e:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    2245:	e9 20 03 00 00       	jmp    256a <subtask1+0x36a>
    224a:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    2251:	e9 06 03 00 00       	jmp    255c <subtask1+0x35c>
    2256:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2259:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    225c:	01 f1                	add    %esi,%ecx
    225e:	48 63 f1             	movslq %ecx,%rsi
    2261:	48 63 c8             	movslq %eax,%rcx
    2264:	48 0f af ce          	imul   %rsi,%rcx
    2268:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    226f:	00 
    2270:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2274:	48 01 ce             	add    %rcx,%rsi
    2277:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    227a:	48 63 c9             	movslq %ecx,%rcx
    227d:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2280:	89 4d d0             	mov    %ecx,-0x30(%rbp)
    2283:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2286:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2289:	01 f1                	add    %esi,%ecx
    228b:	48 63 f1             	movslq %ecx,%rsi
    228e:	48 63 c8             	movslq %eax,%rcx
    2291:	48 0f af ce          	imul   %rsi,%rcx
    2295:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    229c:	00 
    229d:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    22a1:	48 01 ce             	add    %rcx,%rsi
    22a4:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    22a7:	83 c1 01             	add    $0x1,%ecx
    22aa:	48 63 c9             	movslq %ecx,%rcx
    22ad:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    22b0:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
    22b3:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    22b6:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    22b9:	01 f1                	add    %esi,%ecx
    22bb:	48 63 f1             	movslq %ecx,%rsi
    22be:	48 63 c8             	movslq %eax,%rcx
    22c1:	48 0f af ce          	imul   %rsi,%rcx
    22c5:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    22cc:	00 
    22cd:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    22d1:	48 01 ce             	add    %rcx,%rsi
    22d4:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    22d7:	83 c1 02             	add    $0x2,%ecx
    22da:	48 63 c9             	movslq %ecx,%rcx
    22dd:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    22e0:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    22e3:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    22e6:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    22e9:	01 f1                	add    %esi,%ecx
    22eb:	48 63 f1             	movslq %ecx,%rsi
    22ee:	48 63 c8             	movslq %eax,%rcx
    22f1:	48 0f af ce          	imul   %rsi,%rcx
    22f5:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    22fc:	00 
    22fd:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2301:	48 01 ce             	add    %rcx,%rsi
    2304:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2307:	83 c1 03             	add    $0x3,%ecx
    230a:	48 63 c9             	movslq %ecx,%rcx
    230d:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2310:	89 4d dc             	mov    %ecx,-0x24(%rbp)
    2313:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2316:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2319:	01 f1                	add    %esi,%ecx
    231b:	48 63 f1             	movslq %ecx,%rsi
    231e:	48 63 c8             	movslq %eax,%rcx
    2321:	48 0f af ce          	imul   %rsi,%rcx
    2325:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    232c:	00 
    232d:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2331:	48 01 ce             	add    %rcx,%rsi
    2334:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2337:	83 c1 04             	add    $0x4,%ecx
    233a:	48 63 c9             	movslq %ecx,%rcx
    233d:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2340:	89 4d e0             	mov    %ecx,-0x20(%rbp)
    2343:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2346:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2349:	01 f1                	add    %esi,%ecx
    234b:	48 63 f1             	movslq %ecx,%rsi
    234e:	48 63 c8             	movslq %eax,%rcx
    2351:	48 0f af ce          	imul   %rsi,%rcx
    2355:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    235c:	00 
    235d:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2361:	48 01 ce             	add    %rcx,%rsi
    2364:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2367:	83 c1 05             	add    $0x5,%ecx
    236a:	48 63 c9             	movslq %ecx,%rcx
    236d:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2370:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
    2373:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2376:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2379:	01 f1                	add    %esi,%ecx
    237b:	48 63 f1             	movslq %ecx,%rsi
    237e:	48 63 c8             	movslq %eax,%rcx
    2381:	48 0f af ce          	imul   %rsi,%rcx
    2385:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    238c:	00 
    238d:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2391:	48 01 ce             	add    %rcx,%rsi
    2394:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2397:	83 c1 06             	add    $0x6,%ecx
    239a:	48 63 c9             	movslq %ecx,%rcx
    239d:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    23a0:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    23a3:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    23a6:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    23a9:	01 f1                	add    %esi,%ecx
    23ab:	48 63 f1             	movslq %ecx,%rsi
    23ae:	48 63 c8             	movslq %eax,%rcx
    23b1:	48 0f af ce          	imul   %rsi,%rcx
    23b5:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    23bc:	00 
    23bd:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    23c1:	48 01 ce             	add    %rcx,%rsi
    23c4:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    23c7:	83 c1 07             	add    $0x7,%ecx
    23ca:	48 63 c9             	movslq %ecx,%rcx
    23cd:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    23d0:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    23d3:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    23d6:	48 63 f1             	movslq %ecx,%rsi
    23d9:	48 63 ca             	movslq %edx,%rcx
    23dc:	48 0f af ce          	imul   %rsi,%rcx
    23e0:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    23e7:	00 
    23e8:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    23ec:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    23f0:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    23f3:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    23f6:	01 f1                	add    %esi,%ecx
    23f8:	48 63 c9             	movslq %ecx,%rcx
    23fb:	8b 75 d0             	mov    -0x30(%rbp),%esi
    23fe:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2401:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2404:	83 c1 01             	add    $0x1,%ecx
    2407:	48 63 f1             	movslq %ecx,%rsi
    240a:	48 63 ca             	movslq %edx,%rcx
    240d:	48 0f af ce          	imul   %rsi,%rcx
    2411:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2418:	00 
    2419:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    241d:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2421:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2424:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2427:	01 f1                	add    %esi,%ecx
    2429:	48 63 c9             	movslq %ecx,%rcx
    242c:	8b 75 d4             	mov    -0x2c(%rbp),%esi
    242f:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2432:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2435:	83 c1 02             	add    $0x2,%ecx
    2438:	48 63 f1             	movslq %ecx,%rsi
    243b:	48 63 ca             	movslq %edx,%rcx
    243e:	48 0f af ce          	imul   %rsi,%rcx
    2442:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2449:	00 
    244a:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    244e:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2452:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2455:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2458:	01 f1                	add    %esi,%ecx
    245a:	48 63 c9             	movslq %ecx,%rcx
    245d:	8b 75 d8             	mov    -0x28(%rbp),%esi
    2460:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2463:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2466:	83 c1 03             	add    $0x3,%ecx
    2469:	48 63 f1             	movslq %ecx,%rsi
    246c:	48 63 ca             	movslq %edx,%rcx
    246f:	48 0f af ce          	imul   %rsi,%rcx
    2473:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    247a:	00 
    247b:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    247f:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2483:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2486:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2489:	01 f1                	add    %esi,%ecx
    248b:	48 63 c9             	movslq %ecx,%rcx
    248e:	8b 75 dc             	mov    -0x24(%rbp),%esi
    2491:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2494:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2497:	83 c1 04             	add    $0x4,%ecx
    249a:	48 63 f1             	movslq %ecx,%rsi
    249d:	48 63 ca             	movslq %edx,%rcx
    24a0:	48 0f af ce          	imul   %rsi,%rcx
    24a4:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    24ab:	00 
    24ac:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    24b0:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    24b4:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    24b7:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    24ba:	01 f1                	add    %esi,%ecx
    24bc:	48 63 c9             	movslq %ecx,%rcx
    24bf:	8b 75 e0             	mov    -0x20(%rbp),%esi
    24c2:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    24c5:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    24c8:	83 c1 05             	add    $0x5,%ecx
    24cb:	48 63 f1             	movslq %ecx,%rsi
    24ce:	48 63 ca             	movslq %edx,%rcx
    24d1:	48 0f af ce          	imul   %rsi,%rcx
    24d5:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    24dc:	00 
    24dd:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    24e1:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    24e5:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    24e8:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    24eb:	01 f1                	add    %esi,%ecx
    24ed:	48 63 c9             	movslq %ecx,%rcx
    24f0:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    24f3:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    24f6:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    24f9:	83 c1 06             	add    $0x6,%ecx
    24fc:	48 63 f1             	movslq %ecx,%rsi
    24ff:	48 63 ca             	movslq %edx,%rcx
    2502:	48 0f af ce          	imul   %rsi,%rcx
    2506:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    250d:	00 
    250e:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2512:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2516:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2519:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    251c:	01 f1                	add    %esi,%ecx
    251e:	48 63 c9             	movslq %ecx,%rcx
    2521:	8b 75 e8             	mov    -0x18(%rbp),%esi
    2524:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2527:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    252a:	83 c1 07             	add    $0x7,%ecx
    252d:	48 63 f1             	movslq %ecx,%rsi
    2530:	48 63 ca             	movslq %edx,%rcx
    2533:	48 0f af ce          	imul   %rsi,%rcx
    2537:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    253e:	00 
    253f:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2543:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2547:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    254a:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    254d:	01 f1                	add    %esi,%ecx
    254f:	48 63 c9             	movslq %ecx,%rcx
    2552:	8b 75 ec             	mov    -0x14(%rbp),%esi
    2555:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2558:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    255c:	83 7d cc 07          	cmpl   $0x7,-0x34(%rbp)
    2560:	0f 8e f0 fc ff ff    	jle    2256 <subtask1+0x56>
    2566:	83 45 c8 08          	addl   $0x8,-0x38(%rbp)
    256a:	83 7d c8 1f          	cmpl   $0x1f,-0x38(%rbp)
    256e:	0f 8e d6 fc ff ff    	jle    224a <subtask1+0x4a>
    2574:	83 45 c4 08          	addl   $0x8,-0x3c(%rbp)
    2578:	83 7d c4 1f          	cmpl   $0x1f,-0x3c(%rbp)
    257c:	0f 8e bc fc ff ff    	jle    223e <subtask1+0x3e>
    2582:	90                   	nop
    2583:	90                   	nop
    2584:	5d                   	pop    %rbp
    2585:	c3                   	ret

0000000000002586 <subtask2>:
    2586:	f3 0f 1e fa          	endbr64
    258a:	55                   	push   %rbp
    258b:	48 89 e5             	mov    %rsp,%rbp
    258e:	89 7d bc             	mov    %edi,-0x44(%rbp)
    2591:	89 75 b8             	mov    %esi,-0x48(%rbp)
    2594:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    2598:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
    259c:	8b 45 bc             	mov    -0x44(%rbp),%eax
    259f:	48 63 d0             	movslq %eax,%rdx
    25a2:	48 83 ea 01          	sub    $0x1,%rdx
    25a6:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    25aa:	8b 55 b8             	mov    -0x48(%rbp),%edx
    25ad:	48 63 ca             	movslq %edx,%rcx
    25b0:	48 83 e9 01          	sub    $0x1,%rcx
    25b4:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    25b8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    25bf:	e9 3a 03 00 00       	jmp    28fe <subtask2+0x378>
    25c4:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    25cb:	e9 20 03 00 00       	jmp    28f0 <subtask2+0x36a>
    25d0:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    25d7:	e9 06 03 00 00       	jmp    28e2 <subtask2+0x35c>
    25dc:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    25df:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    25e2:	01 f1                	add    %esi,%ecx
    25e4:	48 63 f1             	movslq %ecx,%rsi
    25e7:	48 63 c8             	movslq %eax,%rcx
    25ea:	48 0f af ce          	imul   %rsi,%rcx
    25ee:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    25f5:	00 
    25f6:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    25fa:	48 01 ce             	add    %rcx,%rsi
    25fd:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    2600:	48 63 c9             	movslq %ecx,%rcx
    2603:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2606:	89 4d d0             	mov    %ecx,-0x30(%rbp)
    2609:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    260c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    260f:	01 f1                	add    %esi,%ecx
    2611:	48 63 f1             	movslq %ecx,%rsi
    2614:	48 63 c8             	movslq %eax,%rcx
    2617:	48 0f af ce          	imul   %rsi,%rcx
    261b:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2622:	00 
    2623:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2627:	48 01 ce             	add    %rcx,%rsi
    262a:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    262d:	83 c1 01             	add    $0x1,%ecx
    2630:	48 63 c9             	movslq %ecx,%rcx
    2633:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2636:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
    2639:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    263c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    263f:	01 f1                	add    %esi,%ecx
    2641:	48 63 f1             	movslq %ecx,%rsi
    2644:	48 63 c8             	movslq %eax,%rcx
    2647:	48 0f af ce          	imul   %rsi,%rcx
    264b:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2652:	00 
    2653:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2657:	48 01 ce             	add    %rcx,%rsi
    265a:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    265d:	83 c1 02             	add    $0x2,%ecx
    2660:	48 63 c9             	movslq %ecx,%rcx
    2663:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2666:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    2669:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    266c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    266f:	01 f1                	add    %esi,%ecx
    2671:	48 63 f1             	movslq %ecx,%rsi
    2674:	48 63 c8             	movslq %eax,%rcx
    2677:	48 0f af ce          	imul   %rsi,%rcx
    267b:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2682:	00 
    2683:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2687:	48 01 ce             	add    %rcx,%rsi
    268a:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    268d:	83 c1 03             	add    $0x3,%ecx
    2690:	48 63 c9             	movslq %ecx,%rcx
    2693:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2696:	89 4d dc             	mov    %ecx,-0x24(%rbp)
    2699:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    269c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    269f:	01 f1                	add    %esi,%ecx
    26a1:	48 63 f1             	movslq %ecx,%rsi
    26a4:	48 63 c8             	movslq %eax,%rcx
    26a7:	48 0f af ce          	imul   %rsi,%rcx
    26ab:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    26b2:	00 
    26b3:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    26b7:	48 01 ce             	add    %rcx,%rsi
    26ba:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    26bd:	83 c1 04             	add    $0x4,%ecx
    26c0:	48 63 c9             	movslq %ecx,%rcx
    26c3:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    26c6:	89 4d e0             	mov    %ecx,-0x20(%rbp)
    26c9:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    26cc:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    26cf:	01 f1                	add    %esi,%ecx
    26d1:	48 63 f1             	movslq %ecx,%rsi
    26d4:	48 63 c8             	movslq %eax,%rcx
    26d7:	48 0f af ce          	imul   %rsi,%rcx
    26db:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    26e2:	00 
    26e3:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    26e7:	48 01 ce             	add    %rcx,%rsi
    26ea:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    26ed:	83 c1 05             	add    $0x5,%ecx
    26f0:	48 63 c9             	movslq %ecx,%rcx
    26f3:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    26f6:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
    26f9:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    26fc:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    26ff:	01 f1                	add    %esi,%ecx
    2701:	48 63 f1             	movslq %ecx,%rsi
    2704:	48 63 c8             	movslq %eax,%rcx
    2707:	48 0f af ce          	imul   %rsi,%rcx
    270b:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2712:	00 
    2713:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2717:	48 01 ce             	add    %rcx,%rsi
    271a:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    271d:	83 c1 06             	add    $0x6,%ecx
    2720:	48 63 c9             	movslq %ecx,%rcx
    2723:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2726:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    2729:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    272c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    272f:	01 f1                	add    %esi,%ecx
    2731:	48 63 f1             	movslq %ecx,%rsi
    2734:	48 63 c8             	movslq %eax,%rcx
    2737:	48 0f af ce          	imul   %rsi,%rcx
    273b:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2742:	00 
    2743:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    2747:	48 01 ce             	add    %rcx,%rsi
    274a:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    274d:	83 c1 07             	add    $0x7,%ecx
    2750:	48 63 c9             	movslq %ecx,%rcx
    2753:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2756:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    2759:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    275c:	48 63 f1             	movslq %ecx,%rsi
    275f:	48 63 ca             	movslq %edx,%rcx
    2762:	48 0f af ce          	imul   %rsi,%rcx
    2766:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    276d:	00 
    276e:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2772:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2776:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    2779:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    277c:	01 f1                	add    %esi,%ecx
    277e:	48 63 c9             	movslq %ecx,%rcx
    2781:	8b 75 d0             	mov    -0x30(%rbp),%esi
    2784:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2787:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    278a:	83 c1 01             	add    $0x1,%ecx
    278d:	48 63 f1             	movslq %ecx,%rsi
    2790:	48 63 ca             	movslq %edx,%rcx
    2793:	48 0f af ce          	imul   %rsi,%rcx
    2797:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    279e:	00 
    279f:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    27a3:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    27a7:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    27aa:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    27ad:	01 f1                	add    %esi,%ecx
    27af:	48 63 c9             	movslq %ecx,%rcx
    27b2:	8b 75 d4             	mov    -0x2c(%rbp),%esi
    27b5:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    27b8:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    27bb:	83 c1 02             	add    $0x2,%ecx
    27be:	48 63 f1             	movslq %ecx,%rsi
    27c1:	48 63 ca             	movslq %edx,%rcx
    27c4:	48 0f af ce          	imul   %rsi,%rcx
    27c8:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    27cf:	00 
    27d0:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    27d4:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    27d8:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    27db:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    27de:	01 f1                	add    %esi,%ecx
    27e0:	48 63 c9             	movslq %ecx,%rcx
    27e3:	8b 75 d8             	mov    -0x28(%rbp),%esi
    27e6:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    27e9:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    27ec:	83 c1 03             	add    $0x3,%ecx
    27ef:	48 63 f1             	movslq %ecx,%rsi
    27f2:	48 63 ca             	movslq %edx,%rcx
    27f5:	48 0f af ce          	imul   %rsi,%rcx
    27f9:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2800:	00 
    2801:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2805:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2809:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    280c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    280f:	01 f1                	add    %esi,%ecx
    2811:	48 63 c9             	movslq %ecx,%rcx
    2814:	8b 75 dc             	mov    -0x24(%rbp),%esi
    2817:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    281a:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    281d:	83 c1 04             	add    $0x4,%ecx
    2820:	48 63 f1             	movslq %ecx,%rsi
    2823:	48 63 ca             	movslq %edx,%rcx
    2826:	48 0f af ce          	imul   %rsi,%rcx
    282a:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2831:	00 
    2832:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2836:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    283a:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    283d:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2840:	01 f1                	add    %esi,%ecx
    2842:	48 63 c9             	movslq %ecx,%rcx
    2845:	8b 75 e0             	mov    -0x20(%rbp),%esi
    2848:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    284b:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    284e:	83 c1 05             	add    $0x5,%ecx
    2851:	48 63 f1             	movslq %ecx,%rsi
    2854:	48 63 ca             	movslq %edx,%rcx
    2857:	48 0f af ce          	imul   %rsi,%rcx
    285b:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2862:	00 
    2863:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2867:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    286b:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    286e:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    2871:	01 f1                	add    %esi,%ecx
    2873:	48 63 c9             	movslq %ecx,%rcx
    2876:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    2879:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    287c:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    287f:	83 c1 06             	add    $0x6,%ecx
    2882:	48 63 f1             	movslq %ecx,%rsi
    2885:	48 63 ca             	movslq %edx,%rcx
    2888:	48 0f af ce          	imul   %rsi,%rcx
    288c:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2893:	00 
    2894:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    2898:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    289c:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    289f:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    28a2:	01 f1                	add    %esi,%ecx
    28a4:	48 63 c9             	movslq %ecx,%rcx
    28a7:	8b 75 e8             	mov    -0x18(%rbp),%esi
    28aa:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    28ad:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    28b0:	83 c1 07             	add    $0x7,%ecx
    28b3:	48 63 f1             	movslq %ecx,%rsi
    28b6:	48 63 ca             	movslq %edx,%rcx
    28b9:	48 0f af ce          	imul   %rsi,%rcx
    28bd:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    28c4:	00 
    28c5:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    28c9:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    28cd:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    28d0:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    28d3:	01 f1                	add    %esi,%ecx
    28d5:	48 63 c9             	movslq %ecx,%rcx
    28d8:	8b 75 ec             	mov    -0x14(%rbp),%esi
    28db:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    28de:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    28e2:	83 7d cc 07          	cmpl   $0x7,-0x34(%rbp)
    28e6:	0f 8e f0 fc ff ff    	jle    25dc <subtask2+0x56>
    28ec:	83 45 c8 08          	addl   $0x8,-0x38(%rbp)
    28f0:	83 7d c8 3f          	cmpl   $0x3f,-0x38(%rbp)
    28f4:	0f 8e d6 fc ff ff    	jle    25d0 <subtask2+0x4a>
    28fa:	83 45 c4 08          	addl   $0x8,-0x3c(%rbp)
    28fe:	83 7d c4 3f          	cmpl   $0x3f,-0x3c(%rbp)
    2902:	0f 8e bc fc ff ff    	jle    25c4 <subtask2+0x3e>
    2908:	90                   	nop
    2909:	90                   	nop
    290a:	5d                   	pop    %rbp
    290b:	c3                   	ret

000000000000290c <subtask3>:
    290c:	f3 0f 1e fa          	endbr64
    2910:	55                   	push   %rbp
    2911:	48 89 e5             	mov    %rsp,%rbp
    2914:	89 7d dc             	mov    %edi,-0x24(%rbp)
    2917:	89 75 d8             	mov    %esi,-0x28(%rbp)
    291a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    291e:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    2922:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2925:	48 63 d0             	movslq %eax,%rdx
    2928:	48 83 ea 01          	sub    $0x1,%rdx
    292c:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    2930:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2933:	48 63 ca             	movslq %edx,%rcx
    2936:	48 83 e9 01          	sub    $0x1,%rcx
    293a:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    293e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    2945:	eb 6a                	jmp    29b1 <subtask3+0xa5>
    2947:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    294e:	eb 55                	jmp    29a5 <subtask3+0x99>
    2950:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2953:	48 63 f1             	movslq %ecx,%rsi
    2956:	48 63 c8             	movslq %eax,%rcx
    2959:	48 0f af ce          	imul   %rsi,%rcx
    295d:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2964:	00 
    2965:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    2969:	48 01 ce             	add    %rcx,%rsi
    296c:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    296f:	48 63 c9             	movslq %ecx,%rcx
    2972:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2975:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    2978:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    297b:	48 63 f1             	movslq %ecx,%rsi
    297e:	48 63 ca             	movslq %edx,%rcx
    2981:	48 0f af ce          	imul   %rsi,%rcx
    2985:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    298c:	00 
    298d:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    2991:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2995:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2998:	48 63 c9             	movslq %ecx,%rcx
    299b:	8b 75 ec             	mov    -0x14(%rbp),%esi
    299e:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    29a1:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    29a5:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    29a8:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
    29ab:	7c a3                	jl     2950 <subtask3+0x44>
    29ad:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    29b1:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    29b4:	3b 4d d8             	cmp    -0x28(%rbp),%ecx
    29b7:	7c 8e                	jl     2947 <subtask3+0x3b>
    29b9:	90                   	nop
    29ba:	90                   	nop
    29bb:	5d                   	pop    %rbp
    29bc:	c3                   	ret

00000000000029bd <trans>:
    29bd:	f3 0f 1e fa          	endbr64
    29c1:	55                   	push   %rbp
    29c2:	48 89 e5             	mov    %rsp,%rbp
    29c5:	89 7d dc             	mov    %edi,-0x24(%rbp)
    29c8:	89 75 d8             	mov    %esi,-0x28(%rbp)
    29cb:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    29cf:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    29d3:	8b 45 dc             	mov    -0x24(%rbp),%eax
    29d6:	48 63 d0             	movslq %eax,%rdx
    29d9:	48 83 ea 01          	sub    $0x1,%rdx
    29dd:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    29e1:	8b 55 d8             	mov    -0x28(%rbp),%edx
    29e4:	48 63 ca             	movslq %edx,%rcx
    29e7:	48 83 e9 01          	sub    $0x1,%rcx
    29eb:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    29ef:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    29f6:	eb 6a                	jmp    2a62 <trans+0xa5>
    29f8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    29ff:	eb 55                	jmp    2a56 <trans+0x99>
    2a01:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2a04:	48 63 f1             	movslq %ecx,%rsi
    2a07:	48 63 c8             	movslq %eax,%rcx
    2a0a:	48 0f af ce          	imul   %rsi,%rcx
    2a0e:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2a15:	00 
    2a16:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    2a1a:	48 01 ce             	add    %rcx,%rsi
    2a1d:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2a20:	48 63 c9             	movslq %ecx,%rcx
    2a23:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2a26:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    2a29:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2a2c:	48 63 f1             	movslq %ecx,%rsi
    2a2f:	48 63 ca             	movslq %edx,%rcx
    2a32:	48 0f af ce          	imul   %rsi,%rcx
    2a36:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2a3d:	00 
    2a3e:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    2a42:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2a46:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2a49:	48 63 c9             	movslq %ecx,%rcx
    2a4c:	8b 75 ec             	mov    -0x14(%rbp),%esi
    2a4f:	89 34 8f             	mov    %esi,(%rdi,%rcx,4)
    2a52:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    2a56:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2a59:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
    2a5c:	7c a3                	jl     2a01 <trans+0x44>
    2a5e:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    2a62:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    2a65:	3b 4d d8             	cmp    -0x28(%rbp),%ecx
    2a68:	7c 8e                	jl     29f8 <trans+0x3b>
    2a6a:	90                   	nop
    2a6b:	90                   	nop
    2a6c:	5d                   	pop    %rbp
    2a6d:	c3                   	ret

0000000000002a6e <registerFunctions>:
    2a6e:	f3 0f 1e fa          	endbr64
    2a72:	55                   	push   %rbp
    2a73:	48 89 e5             	mov    %rsp,%rbp
    2a76:	48 8d 05 a3 25 00 00 	lea    0x25a3(%rip),%rax        # 5020 <transpose_submit_desc>
    2a7d:	48 89 c6             	mov    %rax,%rsi
    2a80:	48 8d 05 d5 f6 ff ff 	lea    -0x92b(%rip),%rax        # 215c <transpose_submit>
    2a87:	48 89 c7             	mov    %rax,%rdi
    2a8a:	e8 fe f5 ff ff       	call   208d <registerTransFunction>
    2a8f:	48 8d 05 aa 25 00 00 	lea    0x25aa(%rip),%rax        # 5040 <trans_desc>
    2a96:	48 89 c6             	mov    %rax,%rsi
    2a99:	48 8d 05 1d ff ff ff 	lea    -0xe3(%rip),%rax        # 29bd <trans>
    2aa0:	48 89 c7             	mov    %rax,%rdi
    2aa3:	e8 e5 f5 ff ff       	call   208d <registerTransFunction>
    2aa8:	90                   	nop
    2aa9:	5d                   	pop    %rbp
    2aaa:	c3                   	ret

0000000000002aab <is_transpose>:
    2aab:	f3 0f 1e fa          	endbr64
    2aaf:	55                   	push   %rbp
    2ab0:	48 89 e5             	mov    %rsp,%rbp
    2ab3:	89 7d dc             	mov    %edi,-0x24(%rbp)
    2ab6:	89 75 d8             	mov    %esi,-0x28(%rbp)
    2ab9:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    2abd:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    2ac1:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2ac4:	48 63 d0             	movslq %eax,%rdx
    2ac7:	48 83 ea 01          	sub    $0x1,%rdx
    2acb:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    2acf:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2ad2:	48 63 ca             	movslq %edx,%rcx
    2ad5:	48 83 e9 01          	sub    $0x1,%rcx
    2ad9:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    2add:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    2ae4:	eb 6e                	jmp    2b54 <is_transpose+0xa9>
    2ae6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    2aed:	eb 59                	jmp    2b48 <is_transpose+0x9d>
    2aef:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2af2:	48 63 f1             	movslq %ecx,%rsi
    2af5:	48 63 c8             	movslq %eax,%rcx
    2af8:	48 0f af ce          	imul   %rsi,%rcx
    2afc:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2b03:	00 
    2b04:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    2b08:	48 01 ce             	add    %rcx,%rsi
    2b0b:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    2b0e:	48 63 c9             	movslq %ecx,%rcx
    2b11:	8b 3c 8e             	mov    (%rsi,%rcx,4),%edi
    2b14:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    2b17:	48 63 f1             	movslq %ecx,%rsi
    2b1a:	48 63 ca             	movslq %edx,%rcx
    2b1d:	48 0f af ce          	imul   %rsi,%rcx
    2b21:	48 8d 34 8d 00 00 00 	lea    0x0(,%rcx,4),%rsi
    2b28:	00 
    2b29:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    2b2d:	48 01 ce             	add    %rcx,%rsi
    2b30:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2b33:	48 63 c9             	movslq %ecx,%rcx
    2b36:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    2b39:	39 cf                	cmp    %ecx,%edi
    2b3b:	74 07                	je     2b44 <is_transpose+0x99>
    2b3d:	b8 00 00 00 00       	mov    $0x0,%eax
    2b42:	eb 1d                	jmp    2b61 <is_transpose+0xb6>
    2b44:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    2b48:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    2b4b:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
    2b4e:	7c 9f                	jl     2aef <is_transpose+0x44>
    2b50:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    2b54:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    2b57:	3b 4d d8             	cmp    -0x28(%rbp),%ecx
    2b5a:	7c 8a                	jl     2ae6 <is_transpose+0x3b>
    2b5c:	b8 01 00 00 00       	mov    $0x1,%eax
    2b61:	5d                   	pop    %rbp
    2b62:	c3                   	ret

Disassembly of section .fini:

0000000000002b64 <_fini>:
    2b64:	f3 0f 1e fa          	endbr64
    2b68:	48 83 ec 08          	sub    $0x8,%rsp
    2b6c:	48 83 c4 08          	add    $0x8,%rsp
    2b70:	c3                   	ret
