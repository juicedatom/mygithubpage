#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("Hello %s!  Congrats, you are now almost able to scp a toaster.\n", getenv("USER"));
    return 0;
}
