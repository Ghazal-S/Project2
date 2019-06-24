
#include "types.h"
#include "stat.h"
#include "user.h"

void
foo(int pid)
{
  int i;
  for (i=0;i<1000;i++){
	printf(2, "Child %d prints for the %d time \n",pid,i);
  }

}

void
RRsanity(void)
{
  int wTime;
  int rTime;
  int pid;
  printf(1, "RRsanity\n");
  for(int i=0;i<10;i++) // loop will run 10 times
    { 
        if(fork() == 0) 
        { 
	    foo(getpid()) 
            exit(0); 
        } 
    } 
    for(int i=0;i<10;i++) // loop will run 10 times
    wait(NULL); 
      
    getPerformanceData(&wTime,&rTime);
    printf(1, "wTime: %d rTime: %d \n",wTime,rTime);
}

}
int
main(void)
{
  RRsanity();
  exit();
}
