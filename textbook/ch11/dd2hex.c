/* Exercise 11.3 */
#include "csapp.h"

int main(int argc, char **argv)
{
	struct in_addr ipaddr;
	if(inet_pton(AF_INET, argv[1], &ipaddr)<=0)
		unix_error("inet_pton error");
	ipaddr.s_addr = htonl(ipaddr.s_addr);
	printf("0x%x\n",ipaddr.s_addr);
	
	return 0;
}
