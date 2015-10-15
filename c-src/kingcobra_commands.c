#include <stdio.h>
#include <unistd.h>

int enable_cloud_perfect_forwarding=1;

void KingCobra_ServiceRequest(void* args)
{
 	printf("KingCobra_ServiceRequest invoked\n");	
	if(enable_cloud_perfect_forwarding)
	{
		printf("KingCobra - Cloud Perfect Forwarding C++ std::move client-server binaries invoked\n");
		execl("/bin/sh", "sh", "-c", "/media/shrinivaasanka/0fc4d8a2-1c74-42b8-8099-9ef78d8c8ea2/home/kashrinivaasan/linux-4.1.5/drivers/kcobra/kingcobra_cloud_perfect_forwarding.sh", (char *) 0);
	}
}
