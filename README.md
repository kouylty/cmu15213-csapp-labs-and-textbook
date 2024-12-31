# cmu 15-213 Labs and Textbook

Created by kouylty, at 2024/12/30.

This repository serves as a personal study record of cmu15-213, Introduction to Computer Systems.

Course website: https://www.cs.cmu.edu/~213/

Lab handout website: http://csapp.cs.cmu.edu/3e/labs.html

Since most of the labwork should be done and evaluated on a linux system, I record some key processes of building a utilizable Ubuntu system here.

After installing the Ubuntu system, in order to build a gcc environment, open the terminal and type
```
sudo apt update
sudo apt install build-essential
```

Methods to compile and run C programs using linux terminal is
```
gcc -std=c11 prog.c
gcc -o prog prog.c
./prog
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
