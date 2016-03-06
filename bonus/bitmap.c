/*
** bitmap.c for bonus
**
** Made by	Adrien WERY
** Login	wery_a
**
** Started on	Sun Mar 06 14:51:09 2016 Adrien WERY
** Last update	Sun Mar 06 23:09:49 2016 Nicolas Constanty
*/

#include "sys.h"

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

void    interSphere(uint* color, t_vector3 vecs, t_obj obj)
{
    double	a[4];

    a[0] = vecs.x * vecs.x + vecs.y * vecs.y + vecs.z * vecs.z;
    a[1] = 2.0 * (CAMPX * vecs.x + CAMPY * vecs.y + CAMPZ * vecs.z);
    a[2] = CAMPX * CAMPX + CAMPY * CAMPY + CAMPZ * CAMPZ - obj.r * obj.r;
    a[3] = a[1] * a[1] - 4.0 * a[0] * a[2];
    if (a[3] >= 0)
        *color = obj.color;
}

uint    calc_color(t_vector3 vecs)
{
    uint    color = 0;
    t_obj   obj = {
        {SPX, SPY, SPZ}, SRA, SCOLOR
    };
    interSphere(&color, vecs, obj);
    return (color);
}

int main()
{
    uint        *img;
    uint        i = FULL_SIZE;
    int         fd = makeBMP();
    t_vector3   vecs;
    img = malloc(FULL_BYTE_SIZE);
    while (--i)
        {
            vecs.x = (SIZE_F / 2) - i % SIZE;
            vecs.y = (SIZE_F / 2) - i / SIZE;
            printf("i = %d x = %d\n", i, vecs.x);
            printf("i = %d y = %d\n", i, vecs.y);
            // vecs.z = SIZE_F / 0.46630765815;
            vecs.z = 2144;
            img[i] = calc_color(vecs);
        }
    write(1, "\n", 1);
    write(fd, img, FULL_BYTE_SIZE);
    close(fd);
    free(img);
}
