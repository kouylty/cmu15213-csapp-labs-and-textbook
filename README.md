# CMU 15-213 CSAPP: Labs and Textbook

Created by kouylty, at 2024/12/30.

This repository serves as a personal study record of cmu15-213, Computer Systems: A programmer's Perspective. It contains my trajectory of solving the labs and my notes when reading the textbook.

In this readme below, I record some notes about the environment settings, from the easy building of the linux system, to the particular lab environment adjustments.

Course website: https://www.cs.cmu.edu/~213/

https://www.cs.cmu.edu/afs/cs/academic/class/15213-f15/www/

Lab handout website: http://csapp.cs.cmu.edu/3e/labs.html

Since most of the labwork should be done and evaluated on a linux system, I record some key processes of building a utilizable Ubuntu system here.

After installing the Ubuntu system, in order to build a gcc environment, open the terminal and type
```
sudo apt update
sudo apt install build-essential
```

To resize the screen and enhance user's visualization experience, choose the "Devices" on the menu of the virtualbox and click on the icon "Insert guest additions". Then there appears a disk icon on the table of Ubuntu files, click it and click the "Run software" icon. Then just wait the procedure to finish automatically.

Moreover, it is useful to share files between our Windows system and Ubuntu. Here is a method not using Samba or SSH.

In Windows, right-click the file we want to share and open the "Properties" option. Enter the "Share" menu and click "Advanced share", "Permissions", and tick the "Total control" option.
In our virtualbox, enter the "Settings" and find the "Share Folders". Add the path of the file we want to share and tick the "Fully loaded" option.
Open our Ubuntu, then we may see our shared files named as "sf_<filename>".

If we then find we don't have permissions to view or revise the shared file, open the terminal and type
```
sudo adduser <username> vboxsf
```

Then reboot our Ubuntu, using
```
sudo reboot
```

### Let the journey commence!

In the first lab, "Datalab", I found a quirky behaviour in my Ubuntu. My compiler would fail when I make the btest according to the guide, maybe because my Ubuntu is not compatible(?) with the -m32 option. So in order to make btest, type
```
gcc -o btest bits.c btest.c decl.c tests.c
```
instead of "> make btest".

Or it can also be done by recoding the makefile.

In "Attacklab", if the targets are run in a virtualbox, only use command line

```
./ctarget -q
cat exploit.txt | ./hex2raw | ./ctarget -q
(gdb) run -q
```

Otherwise it would fail with ```FAILED: Initialization error: Running on an illegal host [virtualbox]```.

In "Malloclab", if the makefile returns with an error like

```
bits/libc-header-start.h: No such file or directory
```

then type in terminal

```
sudo apt-get install gcc-multilib
```

If the mdriver program returns with an error like

```
Could not open ... /amptjp-bal.rep in read_trace: No such file or directory
```

then open the ```config.h``` file and edit the trace to 

```
#define TRACEDIR "./trace/"
```

and it will work.

In the last lab "Proxylab", if the ```./driver.sh``` encounters a time-out termination at the concurrency evaluation part, change line 301 of the shellcode to

```
python3 ./nop-server.py ${nop_port} &> /dev/null &
```
