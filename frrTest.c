
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
 
  
  printf(1, "frrTest\n");
  for(int i=0;i<10;i++) // loop will run 10 times
    { 
        if(fork() == 0) 
        { 
	    foo();
	    printf(1, "%d ,  ", getpid());
            exit(); 
        } 
    } 
   // for(int i=0;i<10;i++) // loop will run 10 times
   // wait(NULL); 
      
   


}
int
main(void)
{
  frrTest();
  exit();
}
