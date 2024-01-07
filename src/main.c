#include "../include/main.hpp"

int	main(void)
{
	char*	line;
	while (1)
	{
		line = read_line();
		if (line)
            printf("%s", line);
	}
	return (0);
}

