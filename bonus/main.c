/*
** main.c for bonus
**
** Made by	Adrien WERY
** Login	wery_a
**
** Started on	Sun Mar 06 17:59:04 2016 Adrien WERY
** Last update	Sun Mar 06 21:19:39 2016 Nicolas Constanty
*/

# include "sys.h"

int 	makeBMP()
{
    t_bmp_header		header = {
        0x4D42, SIZE_INFO_HEADER + SIZE_HEADER + FULL_SIZE * sizeof(uint32_t),
        0, 0, SIZE_INFO_HEADER + SIZE_HEADER,
        SIZE_INFO_HEADER, SIZE, SIZE,
        1, 32, 0, FULL_SIZE * sizeof(uint32_t),
        0, 0, 0, 0
    };
    int fd = open(FILENAME, O_CREAT | O_TRUNC | O_WRONLY, 0644);
    write(fd, &header, SIZE_HEADER + SIZE_INFO_HEADER);
    return (fd);
}

int main()
{
    uint        *img;
    int         fd = makeBMP();
    img = malloc(FULL_BYTE_SIZE);
    rt(img, SIZE);
    write(fd, img, FULL_BYTE_SIZE);
    close(fd);
    free(img);
}
