/***************************************************************************************
KingCobra - BFT request servicing software on cloud with queues and arbiters

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

--------------------------------------------------------------------------------------------------
Copyright (C):
Srinivasan Kannan (alias) Ka.Shrinivaasan (alias) Shrinivas Kannan
Independent Open Source Developer, Researcher and Consultant
Ph: 9789346927, 9003082186, 9791165980
Open Source Products Profile(Krishna iResearch): http://sourceforge.net/users/ka_shrinivaasan, https://www.ohloh.net/accounts/ka_shrinivaasan
Personal website(research): https://sites.google.com/site/kuja27/
emails: ka.shrinivaasan@gmail.com, shrinivas.kannan@gmail.com, kashrinivaasan@live.com
--------------------------------------------------------------------------------------------------

*****************************************************************************************/

/*
#include <linux/string.h>
#include <linux/module.h>
#include <linux/virgo_queue.h>
#include <linux/string.h>
#include <kstrtox.h>
#include <linux/ctype.h>


static int __init kingcobra_kernelspace_init(void);
static void __exit kingcobra_kernelspace_exit(void);
void kingcobra_servicerequest_kernelspace(void* args);
*/

#include <linux/kingcobra.h>

static int __init
kingcobra_kernelspace_init(void)
{
	printk(KERN_INFO "kingcobra_kernelspace_init(): initializing KingCobra kernel module\n");
	return 0;
}
EXPORT_SYMBOL(kingcobra_kernelspace_init);


static void __exit
kingcobra_kernelspace_exit(void)
{
	printk(KERN_INFO "kingcobra_kernelspace_exit(): exiting KingCobra kernel module \n");
	do_exit(1);
}
EXPORT_SYMBOL(kingcobra_kernelspace_exit);


void kingcobra_servicerequest_kernelspace(void* args)
{
	printk(KERN_INFO "kingcobra_servicerequest_kernelspace(): KingCobra service request received from kernel KingCobra workqueue: %s\n",(char*)args);
	long client_ip_l=parse_ip_address((char*)args);
	char* response=kmalloc(KCOBRA_BUF_SIZE,GFP_ATOMIC);
	sprintf(response, "REPLY#%x# from kingcobra_servicerequest_kernelspace() to client",client_ip_l);
	reply_to_publisher(client_ip_l,response);
}
EXPORT_SYMBOL(kingcobra_servicerequest_kernelspace);

long parse_ip_address(char* request)
{
	char* delim="#";
	char* token=NULL;
	char* request_dup=kstrdup(request,GFP_ATOMIC);
	printk(KERN_INFO "parse_ip_address(): request_dup = %s\n",request_dup);
	char* request_header=strsep(&request_dup,delim);
	printk(KERN_INFO "parse_ip_address(): request_header= %s\n", request_header);
	token=strsep(&request_dup,delim);
	printk(KERN_INFO "parse_ip_address(): token = %s\n",token);
	unsigned long ll2;
        kstrtoll(token,16,&ll2);
	printk(KERN_INFO "parse_ip_address(): ll2=%d\n",ll2);
	return ll2;
}

void reply_to_publisher(long client_ip_l, char *response)
{
	
	int nr;
	struct kvec iov;
	struct msghdr msg;
	int error;
	struct socket *sock;
	struct sockaddr_in sin;
        int sfd, s, j;
        size_t len;
        ssize_t nread;
        char buf[KCOBRA_BUF_SIZE];

	/*
	struct hostport* leastloadedhostport = get_least_loaded_hostport_from_cloud();
        s = getaddrinfo(leastloadedhostport->host, leastloadedhostport->port, &hints, &result);
	*/

	char* hostip;
	char* port;
	sin.sin_family=AF_INET;
	/*in4_pton(hostip, strlen(hostip), &sin.sin_addr.s_addr, '\0',NULL);*/
	sin.sin_addr.s_addr=client_ip_l;
        sin.sin_port=htons(10000);

	iov.iov_base=buf;
	iov.iov_len=sizeof(buf);	
	msg.msg_name = (struct sockaddr *) &sin;
	msg.msg_namelen = sizeof(struct sockaddr);
	msg.msg_iov = (struct iovec *) &iov;
	msg.msg_iovlen = 1;
	msg.msg_control = NULL;
	msg.msg_controllen = 0;
	msg.msg_flags = 0;
	nr=1;


	strcpy(iov.iov_base, response);
	error = sock_create_kern(AF_INET, SOCK_STREAM, IPPROTO_TCP, &sock);
	printk(KERN_INFO "reply_to_publisher() syscall: created client kernel socket\n");
	kernel_connect(sock, (struct sockaddr*)&sin, sizeof(sin) , 0);
	printk(KERN_INFO "reply_to_publisher() syscall: connected kernel client to virgo cloudexec kernel service\n ");
	kernel_sendmsg(sock, &msg, &iov, nr, KCOBRA_BUF_SIZE);
	printk(KERN_INFO "reply_to_publisher() syscall: sent message: %s \n", buf);
        len  = kernel_recvmsg(sock, &msg, &iov, nr, KCOBRA_BUF_SIZE, msg.msg_flags);
	printk(KERN_INFO "reply_to_publisher() syscall: received message: %s \n", buf);
        le32_to_cpus(buf);
	printk(KERN_INFO "reply_to_publisher() syscall: le32_to_cpus(buf): %s \n", buf);
	sock_release(sock);
	printk(KERN_INFO "reply_to_publisher() syscall: reply_to_publisher() client socket_release() invoked\n");
	
	return len;
}


MODULE_LICENSE("GPL");
module_init(kingcobra_kernelspace_init);
module_exit(kingcobra_kernelspace_exit);
