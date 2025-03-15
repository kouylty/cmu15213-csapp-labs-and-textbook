#include "csapp.h"

extern char **environ;

int mysystem(char *command)
{
	char *argv[4];
	argv[0] = "/bin/sh";
	argv[1] = "-c";
	argv[2] = command;
	argv[3] = NULL;
	pid_t pid;
	if((pid = Fork())==0)
	{
		if(execve(argv[0],argv,environ)<0)
		{
			fprintf(stderr,"Execve error: %s\n",strerror(errno));
			exit(-1);
		}
		exit(0);
	}
	int status;
	if(waitpid(-1,&status,0)==pid)
	{
		if(WIFEXITED(status))
		{
			printf("Command returned with status %d.\n",WEXITSTATUS(status));
			return WEXITSTATUS(status);
		}
		else if(WIFSIGNALED(status))
		{
			printf("Command terminated by signal %d.\n",WTERMSIG(status));
			return WTERMSIG(status);
		}
		else
		{
			fprintf(stderr,"Command terminated abnormally.\n");
			return status;
		}
	}
	if(errno!=ECHILD)
		unix_error("Waitpid error");
}

int main(int argc, char **argv, char **envp)
{
	if(argc!=2)
		unix_error("mysystem reequires one argument.");
	int res = mysystem(argv[1]);
	printf("%d\n",res);
	
	return 0;
}
