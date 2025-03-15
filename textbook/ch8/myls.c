/* Homework 8.20 */
#include "csapp.h"

int main(int argc, char **argv, char **envp)
{
	if(execve("/bin/ls",argv,envp)<0)
	{
		fprintf(stderr,"wrong execve\n");
		exit(1);
	}
	
	return 0;
}
