#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int global_value = 10;
int main(void) {
    int local_value = 20;
    int *heap_value = malloc(sizeof *heap_value);
    if (heap_value == NULL) { perror("malloc"); return 1; }
    *heap_value = 30;
    printf("PID: %ld\n", (long)getpid());
    printf("Global variable address: %p\n", (void *)&global_value);
    printf("Local variable address:  %p\n", (void *)&local_value);
    printf("Heap allocation address: %p\n", (void *)heap_value);
    puts("Sleeping 30 seconds; inspect this PID in another terminal.");
    fflush(stdout);
    sleep(30);
    free(heap_value);
    return 0;
}
