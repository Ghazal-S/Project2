
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
  int wTime;
  int rTime;
  int pid,k;
  printf(1, "RRsanity\n");
  for ( k = 0; k < 10; k++ ) {
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

  for (k = 0; k < 10; k++) {
    wait();
  }

  
      
    getPerformanceData(&wTime,&rTime);
    printf(1, "wTime: %d rTime: %d \n",wTime,rTime);
    exit();
}


int
main(void)
{
  RRsanity();
  exit();
}
