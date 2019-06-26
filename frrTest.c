
#include "types.h"
#include "stat.h"
#include "user.h"

void
foo()
{
  int i;
  for (i=0;i<1000;i++){
	
  }

}

void
frrTest(void)
{
 int pid,k;
  
  printf(1, "frrTest\n");
	for ( k = 0; k < 10; k++ ) {
	    pid = fork ();
	    if ( pid < 0 ) {
	      printf(1, "%d failed in fork!\n", getpid());
	      exit();
	    } else if (pid == 0) {
	      // child
	      foo();
	      printf(1, "%d ,  ", getpid());
	      exit();
	    }
	  }

for (k = 0; k < 10; k++) {
    wait();
  }

  exit();
   // for(int i=0;i<10;i++) // loop will run 10 times
   // wait(NULL); 
      
   


}
int
main(void)
{
  frrTest();
  exit();
}
