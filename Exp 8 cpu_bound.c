#include <stdio.h>
int main(void) {
    volatile unsigned long long count = 0;
    puts("CPU-bound process running. Stop with Ctrl+C.");
    while (1) {
        count++;
        if (count % 100000000ULL == 0) {
            printf("Iterations: %llu\n", count);
            fflush(stdout);
        }
    }
    return 0;
}
