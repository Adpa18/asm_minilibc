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
