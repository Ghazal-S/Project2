
#include "types.h"
#include "stat.h"
#include "user.h"

void
foo(int pid)
{
  int i;
  for (i=0;i<50;i++){
	printf(2, "process %d is printing for the %d time \n",pid,i);
  }

}

void
Gsanity(void)
{

  printf(1, "Gsanity\n");
  printf(1, "Father pid is  %d \n",getppid());
  sleep(10);

        if(fork() == 0) 
        { 
	    foo(getpid()); 
            exit(); 
        } 
    else{
	foo(getppid());
	}


}


int
main(void)
{
  Gsanity();
  exit();
}
