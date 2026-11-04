#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
int main(void) {
    pid_t pid = fork();
    if (pid < 0) { perror("fork failed"); return 1; }
    else if (pid == 0) {
        printf("Child process: PID=%ld, parent PID=%ld\n",
               (long)getpid(), (long)getppid());
    } else {
        printf("Parent process: PID=%ld, child PID=%ld\n",
               (long)getpid(), (long)pid);
        wait(NULL);
        puts("Parent: child process has finished.");
    }
    return 0;
}
