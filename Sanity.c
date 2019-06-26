
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
  int pid,k;
  printf(1, "Sanity\n");

 
  for ( k = 0; k < 30; k++ ) {
    pid = fork ();
    if ( pid < 0 ) {
      printf(1, "%d failed in fork!\n", getpid());
      exit();
    } else if (pid == 0) {
      // child
      foo(k);
      exit();
    }
  }

  for (k = 0; k < 10; k++) {
    wait();
  } 
      
    getPerformanceData(&wTime,&rTime);
    printf(1, "Average turnaround and waiting time of all children => average wTime: %d average rTime: %d \n",(wTime/30),(rTime/30));
    printf(1, "Turnaround and waiting time for all children => total wTime: %d total rTime: %d \n",wTime,rTime);
}


int
main(void)
{
  Sanity();
  exit();
}
