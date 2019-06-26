
#include "types.h"
#include "stat.h"
#include "user.h"

void
foo(int cid)
{
 if(cid%3 == 0){
	nice();
	}
 else if(cid%3 == 1){
	nice();
	nice();
	}
  int i;
  for (i=0;i<500;i++){
	printf(1, "Cid : %d \n",cid);
  }

}

void
Sanity(void)
{
  int wTime;
  int rTime;
  printf(1, "RRsanity\n");
  for(int i=0;i<30;i++) 
    { 
        if(fork() == 0) 
        { 
	    foo(i); 
            exit(); 
        } 
    } 
    //for(int i=0;i<30;i++) 
    //wait(NULL); 
      
    getPerformanceData(&wTime,&rTime);
    printf(1, "average wTime: %d average rTime: %d \n",(wTime/30),(rTime/30));
    printf(1, "total wTime: %d total rTime: %d \n",wTime,rTime);
}


int
main(void)
{
  Sanity();
  exit();
}
