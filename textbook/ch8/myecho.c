/* Exercise 8.6 */
#include "csapp.h"

int main(int argc, char **argv, char **envp)
{
	printf("%d\n",argc);
	printf("Command-line arguments:\n");
	for(int i=0;argv[i]!=NULL;i++)
		printf("	argv[%2d]: %s\n",i,argv[i]);
	printf("Environment variables:\n");
	for(int i=0;argv[i]!=NULL;i++)
		printf("	envp[%2d]: %s\n",i,envp[i]);
	
	return 0;
}
