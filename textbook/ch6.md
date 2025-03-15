**Exercise 6.13**

Referenced Address：```0x0e34```

A. Address Format：```0 1 1 1 0 0 0 1 1 0 1 0 0```

B. Memory Reference

CO：```0x0```

CI：```0x5```

CT：```0x71```

Cache hit？Yes

Byte Returned：```0x0b```



**Exercise 6.14**

Referenced Address：```0x0dd5```

A. Address Format：```0 1 1 0 1 1 1 0 1 0 1 0 1```

B. Memory Reference

CO：```0x1```

CI：```0x5```

CT：```0x6e```

Cache hit? Yes

Byte Returned：--



**Exercise 6.19**

A. Total read：$512$

B. Total cache miss：$256$

C. Miss rate：$50\%$

D. If the size of the cache is doubled, the miss rate will be $25\%$



**Exercise 6.20**

A. Total read：$512$

B. Total cache miss：$128$

C. Miss rate：$25\%$

D. If the size of the cache is doubled, the miss rate will still be $25\%$



**Homework 6.28**

A. None

B. ```0x18f0```，```0x18f1```，```0x18f2```，```0x18f3```，```0x18b0```，```0x18b1```，```0x18b2```，```0x18b3```

C. ```0x0e34```，```0x0e35```，```0x0e36```，```0x0e37```

D. ```0x1bdc```，```0x1bdd```，```0x1bde```，```0x1bdf```



**Homework 6.36**

A. The miss rate is $100\%$.

B. The cache can contain all the ints. Every block can cache four ints, of which only the first one will encounter a cold miss. So the miss rate is $25\%$.

C. The miss rate $25\%$.

D. No. The constraint is the block size.

E. Enlarging the block can decrease the miss rate.



**Homework 6.37**

Every block can cache four ints, and there are totally $2^8$ blocks.

The first case：$N=64$

In regard to ```sumA```, due to the good locality, the miss rate is $25\%$.

In regard to ```sumB```, the locality is malformed, and the miss rate is $100\%$.

In regard to ```sumC```, which is somewhat a cyclic unfolding, it will have two hits and two misses for every iteration. So the miss rate is $50\%$.

The second case：$N=60$.

Function ```sumA``` remains the same, and the miss rate equals to $25\%$.

For ```sumB```，analyze with a program.

```c
int main()
{
    N = 60;
    int cache[SIZEOFCACHE];
    memset(cache,-1,sizeof(cache));
    int miss = 0;
    for (int j=0;j<N;j++)
    	for (int i=0;i<N;i++)
        {
    		int p = i * N + j;
    		int s = position/SIZEOFBLOCK;
    		if (cache[s%SIZEOFCACHE] != s)
    		{
    			++miss;
    			cache[s%SIZEOFCACHE] = s;
    		}
    	}
    printf("%g\n", miss/3600.0);

    return 0;
}

```

So the miss rate is $25\%$.

Also, same for ```sumC```, the miss is $25\%$.



**Homework 6.41**

$25\%$



**Homework 6.42**

$25\%$



**Homework 6.43**

$100\%$