#include <sys/mman.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main() {
    off_t size;
    void *m = NULL;
    for (size = 64 * 1024; size <= 512 * 1024 *1024; size *= 2) {
        m = mmap( NULL, size, PROT_WRITE|PROT_READ, MAP_ANON|MAP_SHARED, -1, 0);
        if (m == MAP_FAILED) {
            printf("mmap(MAP_ANON|MAP_SHARED, %d) failed, errno = %d\n", size, errno);
            exit(EXIT_FAILURE);
        } else {
            printf("%d bytes mmaped\n", size);
            if (munmap(m, size)) {
                printf("munmap failed, errno = %d\n", errno);
                exit(EXIT_FAILURE);
            }
        }
    }

}
