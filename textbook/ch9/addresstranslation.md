**Exercise 9.4**

A. Virtual Address Format：```0 0 0 0 1 1 1 1 0 1 0 1 1 1```

B. Address Translation

VPN：```0 0 0 0 1 1 1 1```，```0x0f```

VPO：```0 1 0 1 1 1```，```0x17```

TLB index（TLBI）：```0x3```

TLB tag（TLBT）：```0x3```

TLB hit？Yes

Page miss？No

PPN：```0x0d```

C. Physical Address Format：```0 0 1 1 0 1 0 1 0 1 1 1```

D. Physical Memory Reference，Cache Byte Returned：```1D```



**Homework 9.11**

Virtual Address：```0x027c```

A. Virtual Address Format：```0 0 0 0 1 0 0 1 1 1 1 1 0 0```

B. Address Translation

VPO：```1 1 1 1 0 0```，```0x3c```

VPN：```0 0 0 0 1 0 0 1```，```0x09```

TLB index（TLBI）：```0x01```

TLB tag（TLBT）：```0x02```

TLB hit？Yes

Page miss？Yes

PPN：```0x33```

C. Physical Address Format：```1 1 0 0 1 1 1 1 1 1 0 0```

D. Physical Memory Reference，Cache Miss



**Homework 9.12**

Virtual Address：```0x03a9```

A. Virtual Address Format：```0 0 0 0 1 1 1 0 1 0 1 0 0 1```

B. Address Translation

VPO：```1 0 1 0 0 1```，```0x29```

VPN：```0 0 0 0 1 1 1 0```，```0x0e```

TLB index（TLBI）：```0x02```

TLB tag（TLBT）：```0x03```

TLB hit？Yes

Page miss？Yes

PPN：```0x11```

C. Physical Address Format：```0 1 0 0 0 1 1 0 1 0 0 1```

D. Physical Memory Reference，Cache miss
