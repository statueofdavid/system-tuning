#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    int x = 1;
    
    pid_t p;
    p = fork();
    if(p==-1)
    {
        printf("There is an error while calling fork()");
    }
    if(p==0)
    {
        printf("We are in the child process: %d, and increments x: %d\n", p, ++x);
	p = fork();
    }
    else
    {
        printf("We are in the parent process %d, and decrements x: %d\n", p, --x);
	p = fork();
    }
    return 0;
}
