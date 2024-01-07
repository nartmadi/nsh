#include "../include/main.hpp"

char*   read_line(void)
{
    char*   line = NULL;
    size_t  bufsize = 0;

    if (getline(&line, &bufsize, stdin) == -1)
    {
        if (feof(stdin))
        {
            free(line);
            printf("DEBUG: ctrl+d detected.\n");
            exit(EXIT_SUCCESS);
        }
        free(line);
        perror("Error while reading the line from stdin");
        exit(EXIT_FAILURE);
    }
    return (line);
}

