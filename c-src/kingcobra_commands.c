#include <stdio.h>
#include <unistd.h>

int enable_cloud_perfect_forwarding=1;

void KingCobra_ServiceRequest(void* args)
{
 	printf("KingCobra_ServiceRequest invoked\n");	
	if(enable_cloud_perfect_forwarding)
	{
		printf("KingCobra - Cloud Perfect Forwarding C++ std::move client-server binaries invoked\n");
		execl("/bin/sh", "sh", "-c", "./kingcobra_cloud_perfect_forwarding.sh", (char *) 0);
	}
}
