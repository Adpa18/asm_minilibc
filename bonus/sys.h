/*
** sys.h for bonus
**
** Made by	Adrien WERY
** Login	wery_a
**
** Started on	Sun Mar 06 16:02:27 2016 Adrien WERY
** Last update	Mon Mar 07 10:05:06 2016 Adrien WERY
*/

#ifndef SYS_H_
#define SYS_H_

#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdint.h>
#include <math.h>

typedef struct	__attribute__((packed)) s_bmp_header
{
  uint16_t	magic;
  uint32_t	size;
  uint16_t	_app1;
  uint16_t	_app2;
  uint32_t	offset;
  uint32_t	size2;
  int32_t	width;
  int32_t	height;
  uint16_t	planes;
  uint16_t	bpp;
  uint32_t	compression;
  uint32_t	raw_data_size;
  int32_t	h_resolution;
  int32_t	v_resolution;
  uint32_t	palette_size;
  uint32_t	important_colors;
}		t_bmp_header;

typedef unsigned int uint;

typedef struct	s_vector3
{
  int	x;
  int	y;
  int	z;
}		         t_vector3;

typedef struct	s_obj
{
    int         posx;
    int	        posy;
    int	        posz;
    uint        r;
    uint        color;
}		         t_obj;


# define SIZE 1000
# define SIZE_F (double)(SIZE)
# define FULL_SIZE (SIZE * SIZE)
# define FULL_BYTE_SIZE (FULL_SIZE * 4)
# define FILENAME "rendu.bmp"
# define SIZE_HEADER 14
# define SIZE_INFO_HEADER 40

# define ZERO (0.00000001)

# define CAMPX 0
# define CAMPY 0
# define CAMPZ -512

# define SPX 0
# define SPY 0
# define SPZ 0
# define SRA 100
# define SCOLOR 0xFF00FF00

void    rt(void *img, uint size, void *objs, uint nb_objs);

#endif /* !SYS_H_ */
