/***************************************************************************************
#NEURONRAIN KINGCOBRA  - Kernelspace Messaging
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-----------------------------------------------------------------------------------------
#Copyleft (Copyright+):
#Srinivasan Kannan (alias) Ka.Shrinivaasan (alias) Shrinivas Kannan
#Ph: 9791499106, 9003082186
#Krishna iResearch Open Source Products Profiles:
#http://sourceforge.net/users/ka_shrinivaasan,
#https://github.com/shrinivaasanka,
#https://www.openhub.net/accounts/ka_shrinivaasan
#Personal website(research): https://sites.google.com/site/kuja27/
#emails: ka.shrinivaasan@gmail.com, shrinivas.kannan@gmail.com,
#kashrinivaasan@live.com
#-----------------------------------------------------------------------------------------
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
        loff_t bytesread=0;
        loff_t pos=0;
        mm_segment_t fs;
        fs=get_fs();
        set_fs(get_ds());
	int filp_ret;
	if(kingcobra_disk_persistence==1)
	{
		printk(KERN_INFO "kingcobra_kernelspace_init(): Initializing disk persistence file for KingCobra\n");
		request_reply_queue=filp_open("/var/log/kingcobra/REQUEST_REPLY.queue", O_RDWR | O_CREAT | O_APPEND | O_LARGEFILE , 0755);
		/*
        	request_reply_queue=filp_open("/var/log/kingcobra/REQUEST_REPLY.queue", O_APPEND , 0777);
		*/
		if(IS_ERR(request_reply_queue))
		{
			filp_ret=PTR_ERR(request_reply_queue);	
			printk(KERN_INFO "kingcobra_kernelspace_init(): disk queue file open error=%d\n",filp_ret);
		}
	}
	kingcobra_servicerequest_kernelspace("REQUEST#1000000#1408964032:335925644#kingcobra_kernelspace_init");
	set_fs(fs);
	return 0;
}
EXPORT_SYMBOL(kingcobra_kernelspace_init);


static void __exit
kingcobra_kernelspace_exit(void)
{
	mm_segment_t fs;
        fs=get_fs();
        set_fs(get_ds());
	printk(KERN_INFO "kingcobra_kernelspace_exit(): exiting KingCobra kernel module \n");
	filp_close(request_reply_queue,NULL);
	set_fs(fs);
	do_exit(1);
}
EXPORT_SYMBOL(kingcobra_kernelspace_exit);


void kingcobra_servicerequest_kernelspace(void* args)
{
        mm_segment_t fs;
	char buf[256];
        fs=get_fs();
        set_fs(get_ds());
	printk(KERN_INFO "kingcobra_servicerequest_kernelspace(): KingCobra service request received from kernel KingCobra workqueue: %s\n",(char*)args);
	if(kingcobra_disk_persistence==1 && args != NULL)
	{
		/*loff_t pos;*/
		sprintf(buf, "%s $$\n",(char*)args);
		printk(KERN_INFO "kingcobra_servicerequest_kernelspace(): disk persistence enabled, writing incoming request to KingCobra disk file:%s\n",buf);
		vfs_write(request_reply_queue, buf, 256, &request_reply_queue_pos);
		request_reply_queue_pos+=256;
	}
	long client_ip_l=parse_ip_address(kstrdup((char*)args,GFP_ATOMIC));
	char* logicaltimestamp=parse_timestamp(kstrdup(buf,GFP_ATOMIC));
	char* response=kmalloc(KCOBRA_BUF_SIZE,GFP_ATOMIC);
	sprintf(response, "REPLY#%x#%s :--- from kingcobra_servicerequest_kernelspace() to client",client_ip_l,logicaltimestamp);
	reply_to_publisher(client_ip_l,response);
	set_fs(fs);
}
EXPORT_SYMBOL(kingcobra_servicerequest_kernelspace);

char* parse_timestamp(char* request)
{
	char* delim="#";
	char* timestamp=NULL;
	char* requestheader;
	char* ipaddr;
	char* request_dup=kstrdup(request,GFP_ATOMIC);
	requestheader=strsep(&request_dup,delim);
	ipaddr=strsep(&request_dup,delim);
	timestamp=strsep(&request_dup,delim);
	printk(KERN_INFO "parse_timestamp(): request = %s\n",request);
	printk(KERN_INFO "parse_timestamp(): requestheader parsed = %s\n",requestheader);
	printk(KERN_INFO "parse_timestamp(): ipaddr parsed  = %s\n",ipaddr);
	printk(KERN_INFO "parse_timestamp(): timestamp parsed  = %s\n",timestamp);
	return timestamp;
}

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
#ifdef LINUX_KERNEL_4_x_x
	struct user_msghdr msg;
#else
	struct msghdr msg;
#endif
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
        sin.sin_port=htons(60000);

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
	error = sock_create_kern(&init_net, AF_INET, SOCK_STREAM, IPPROTO_TCP, &sock);
	printk(KERN_INFO "reply_to_publisher() : created client kernel socket\n");
	kernel_connect(sock, (struct sockaddr*)&sin, sizeof(sin) , 0);
	printk(KERN_INFO "reply_to_publisher() : connected kernel client to virgo cloudexec kernel service\n ");
	kernel_sendmsg(sock, &msg, &iov, nr, KCOBRA_BUF_SIZE);
	printk(KERN_INFO "reply_to_publisher() : sent message: %s \n", buf);
        len  = kernel_recvmsg(sock, &msg, &iov, nr, KCOBRA_BUF_SIZE, msg.msg_flags);
	printk(KERN_INFO "reply_to_publisher() : received message: %s \n", buf);
        le32_to_cpus(buf);
	printk(KERN_INFO "reply_to_publisher() : le32_to_cpus(buf): %s \n", buf);
	sock_release(sock);
	printk(KERN_INFO "reply_to_publisher() : reply_to_publisher() client socket_release() invoked\n");
	
	return len;
}


MODULE_LICENSE("GPL");
module_init(kingcobra_kernelspace_init);
module_exit(kingcobra_kernelspace_exit);
