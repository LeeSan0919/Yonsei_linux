#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "binary.h"

int main(int argc, char *argv[])
{
    int opt;
    int xflag = 0;
    int oflag = 0;
    int bflag = 0;

    while ((opt = getopt(argc, argv, "xob")) != -1) {
        switch (opt) {
        case 'x':
            xflag = 1;
            break;

        case 'o':
            oflag = 1;
            break;

        case 'b':
            bflag = 1;
            break;

        default:
            fprintf(stderr,
                "usage: %s [-x] [-o] [-b] number...\n",
                argv[0]);
            return 1;
        }
    }

    for (int i = optind; i < argc; i++) {

        int value = atoi(argv[i]);

        printf("%d : ", value);

        if (xflag)
            printf("%x ", value);

        if (oflag)
            printf("%o ", value);

        if (bflag)
            binary(value);

        printf("\n");
    }

    return 0;
}
