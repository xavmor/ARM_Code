#define _GNU_SOURCE

#include  <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>

void main()
{
	printf("This is the O_APPEND #: %i", O_APPEND);
	printf("Read and Write Permissions #: %i", O_RDWR);
}
