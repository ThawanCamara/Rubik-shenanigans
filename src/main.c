#include <stdio.h>
#include "libft.h"

enum {WHITE, GREEN, RED, BLUE, ORANGE, YELLOW};

const char	*get_color_str(int id);
void		init_cube(int **cube);


int	main(int argc, char *argv[])
{
	int	cube[6][9] = {0};

	(void)argc;
	(void)argv;
	printf("%s\n", get_color_str(atoi(argv[1])));
	return (0);
}

const char	*get_color_str(int id)
{
	const char	*color_str[] = {
		"White",
		"Green",
		"Red",
		"Orange",
		"Blue",
		"Yellow"
	};

	return (color_str[id % 6]);
}

void		init_cube(int **cube)
{
}
