#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
int main()
{
  int pid;
  pid=fork();
  if(!pid)
  {
    printf("CHILD PROCESS\n");
    printf("CHILD PID:%d\n",getpid());
    printf("PARENT PID:%d\n",getppid());
    printf("FINISHED WITH CHILD");
  }
  else
  {
    wait(0);
    printf("\nPARENT PROCESS\n");
    printf("PARENT PID:%d\n",getppid());
    printf("CHILD PID:%d\n",pid);
  }
  return 0;
}
