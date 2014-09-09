/***************************************************************************************
KingCobra - Byzantine Fault Tolerant Request Servicing Software with Queues and Arbiters

Copyright (C) 2009-2013  Ka.Shrinivaasan

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

-----------------------------------------------------------------------------------------------------------------------------------
Srinivasan Kannan (alias) Ka.Shrinivaasan (alias) Shrinivas Kannan
Independent Open Source Developer, Researcher and Consultant
Ph: 9789346927, 9003082186, 9791165980
Krishna iResearch Open Source Products Profiles:
http://sourceforge.net/users/ka_shrinivaasan,
https://www.ohloh.net/accounts/ka_shrinivaasan
Personal website(research): https://sites.google.com/site/kuja27/
emails: ka.shrinivaasan@gmail.com, shrinivas.kannan@gmail.com,
kashrinivaasan@live.com
-----------------------------------------------------------------------------------------------------------------------------------
*****************************************************************************************/

/*
Userspace library that contains function definitions for KingCobra commands. VIRGO linux workqueue
handler is invoked on the work_structs pushed (push_request()) and does upcall to this userspace
binary. (This is similar to VIRGO kernel upcall functionality in cpupooling and memorypooling kernel modules).
*/

#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>
#include <pthread.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char **argv)
{
       void *handle;
       void* (*kingcobra_function)(void*);
       char *error;
       pthread_t tid;
       void* x;

       int s=0;

       handle = dlopen("/home/kashrinivaasan/linux-3.7.8/drivers/virgo/queuing/libkingcobra_commands.so", RTLD_LAZY);
       if (!handle) {
             fprintf(stderr, "%s\n", dlerror());
             exit(EXIT_FAILURE);
       }

       dlerror();    /* Clear any existing error */

       printf("dlsym lookup for kingcobra function: %s\n", argv[1]);
       *(void **) (&kingcobra_function) = dlsym(handle, argv[1]);
       /* *(void **) (&cloud_function) = dlsym(handle, "_Z16virgo_cloud_testPv");*/

       if ((error = dlerror()) != NULL)  {
               fprintf(stderr, "%s\n", error);
               exit(EXIT_FAILURE);
       }
       printf("KingCobra userspace library: spawning userspace thread for KingCobra function pointer: %x\n",kingcobra_function);
       int args=1000;
       s=pthread_create(&tid, NULL, kingcobra_function, &args); 
       pthread_join(tid, &x);
       fflush(stdout);
       dlclose(handle);

       exit(EXIT_SUCCESS);
}
