
#include "types.h"
#include "stat.h"
#include "user.h"

void
foo()
{
  int i;
  for (i=0;i<1000;i++){
	printf(2, "Child %d prints for the %d time \n",getpid(),i);
  }

}

void
RRsanity(void)
{
   int numberOfForks = 10;
    int wTime[numberOfForks];
    int rTime[numberOfForks];
int k;
int pid;
  printf(1, "RRsanity\n");
  for ( k = 0; k < numberOfForks; k++ ) {
    pid = fork ();
    if ( pid < 0 ) {
      printf(1, "%d failed in fork!\n", getpid());
      exit();
    } else if (pid == 0) {
      // child
      foo();
      exit();
    }
  }


 // for (k = 0; k < 10; k++) {
  //  wait();
  //}

  
while(wait() > 0){
        printf(2, "PID : %d - Wait time : %d - Running time : %d - Turn Around time : %d.\n", getPerformanceData(&wTime[k], &rTime[k]), wTime[k], rTime[k], rTime[k] + wTime[k]);
    }
}


int
main(void)
{
  RRsanity();
  exit();
}
