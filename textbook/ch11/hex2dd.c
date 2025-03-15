/* Exercise 11.2 */
#include "csapp.h"

int main(int argc, char **argv)
{
	struct in_addr ipaddr;
	sscanf(argv[1],"%x",&ipaddr.s_addr);
	ipaddr.s_addr = ntohl(ipaddr.s_addr);
	char buf[MAXBUF];
	if(!inet_ntop(AF_INET, &ipaddr, buf, MAXBUF))
		unix_error("inet_ntop error");
	printf("%s\n",buf);
	
	return 0;
}
