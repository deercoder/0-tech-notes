Linux fork tips
==========

the result of fork() is zero or non-zero. 

When the result is zero, then it is in the child process, otherwise it is father process.

Note that child process copy the userspace of father process.








Demo example
===============

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
   printf("father pid is %d\n", getpid()); 
   int fork_result = fork();
   if (fork_result == 0){
      printf("son pid is %d\n", getpid());
   } else {
      printf("father pid is %d\n", getpid()); 
   }
        
   return 0;
}









