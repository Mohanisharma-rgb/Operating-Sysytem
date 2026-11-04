#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
int main(void) {
    int value = 42;
    pid_t pid = fork();
    if (pid < 0) { perror("fork"); return 1; }
    if (pid == 0) {
        printf("Child: PID=%ld, PPID=%ld, address=%p, value=%d\n",
               (long)getpid(), (long)getppid(), (void *)&value, value);
        fflush(stdout);
        _exit(0);
    } else {
        printf("Parent: PID=%ld, child PID=%ld, address=%p, value=%d\n",
               (long)getpid(), (long)pid, (void *)&value, value);
        wait(NULL);
    }
    return 0;
}
