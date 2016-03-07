typedef unsigned int uint;

# define CAMPX 0
# define CAMPY 0
# define CAMPZ -512

# define SPX 0
# define SPY 0
# define SPZ 0
# define SRA 100
# define SCOLOR 0xFF00FF00

void    rt(void *ptr, unsigned int size)
{
    uint    vecs_x;
    uint    vecs_y;
    uint    vecs_z;
    uint    i = size;
    uint    color;
    int     a[4];
    while (i)
    {
        i -= 4;
        color = 0;
        vecs_x = size / 2 - i % size;
        vecs_y = size / 2 - i / size;
        vecs_z = size / 0.46630765815;
        a[0] = vecs_x * vecs_x + vecs_y * vecs_y + vecs_z * vecs_z;
        a[1] = 2.0 * (CAMPX * vecs_x + CAMPY * vecs_y + CAMPZ * vecs_z);
        a[2] = CAMPX * CAMPX + CAMPY * CAMPY + CAMPZ * CAMPZ - SRA * SRA;
        a[3] = a[1] * a[1] - 4.0 * a[0] * a[2];
        if (a[3] >= 0)
            color = SCOLOR;
        ((int*)(ptr))[i] = color;
    }
}
