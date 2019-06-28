
#include "types.h"
#include "stat.h"
#include "user.h"

void
foo()
{
  int i;
  for (i=0;i<50;i++){
	printf(2, "process %d is printing for the %d time \n",getpid(),i);
  }

}

void
Gsanity(void)
{
int pid;

  printf(1, "Gsanity\n");
  printf(1, "Father pid is  %d \n",getpid());
  sleep(10);


   pid = fork ();
    if ( pid < 0 ) {
      printf(1, "%d failed in fork!\n", getpid());
      exit();
    } else if (pid == 0) {
      // child
      foo();
      exit();
    }

      // parent
      foo();
      exit();

}




int
main(void)
{
  Gsanity();
  exit();
}
