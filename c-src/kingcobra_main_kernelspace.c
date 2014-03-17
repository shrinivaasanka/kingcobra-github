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
}
EXPORT_SYMBOL(kingcobra_servicerequest_kernelspace);


MODULE_LICENSE("GPL");
module_init(kingcobra_kernelspace_init);
module_exit(kingcobra_kernelspace_exit);
