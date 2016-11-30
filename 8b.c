#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
int main()
{
  //man creat in terminal to know more about it
  int fd;
  char buf1[]="123456789ABCDEFG";
  char buf2[]="HIJKLMNOPQRSTUVW";
  fd=creat("t.dat",O_WRONLY|777);
  write(fd,buf1,16);
  lseek(fd,48,SEEK_SET);
  write(fd,buf2,16);
return 0;
}
