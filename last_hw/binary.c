#include <stdio.h>
#include "binary.h"

void binary(int value)
{
    int started = 0;

    for (int i = 31; i >= 0; i--) {
        if (value & (1 << i)) {
            printf("1");
            started = 1;
        } else if (started) {
            printf("0");
        }
    }

    if (!started) {
        printf("0");
    }
}
