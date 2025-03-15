/* Exercise 8.7 */
#include "csapp.h"

void sigint_handler(int sig)
{
	return;
}

int main(int argc, char **argv)
{
	if(signal(SIGINT,sigint_handler)==SIG_ERR)
		unix_error("signal error\n");
	int secs = atoi(argv[1]);
	int rc = sleep(secs);
	printf("Slept for %d of %d secs.\n",secs-rc,secs);
	return 0;
}
