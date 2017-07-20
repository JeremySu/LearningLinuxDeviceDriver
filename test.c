#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
    int fd;
    pid_t child;


    fd = open("/dev/cdata-misc", O_RDWR);
    write(fd, "h", 1);
    write(fd, "el", 2);
    write(fd, "l", 1);
    write(fd, "o", 1);
    close(fd);
}
