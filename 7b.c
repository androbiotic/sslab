#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
int main()
{
  char str[10];
  int pid;
  pid=fork();
  if(!pid)
  {
    printf("................Child Process............\n");
    printf("Enter the command:\n");
    scanf("%s",str);
    system(str);
    printf("Child Process Completed!\n");
  }
  else
  {
    wait(0);
    printf(".....Parent Process.....\n");
  }
  return 0;
}
