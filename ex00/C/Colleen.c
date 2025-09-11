#include <stdio.h>

// Second comment
void Colleen(void)
{
    char *str = "#include <stdio.h>%c%c// Second comment%cvoid Colleen(void)%c{%c    char *str = %c%s%c;%c    printf(str, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main(void)%c{%c// First comment%c    Colleen();%c    return (0);%c}%c";
    printf(str, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main(void)
{
// First comment
    Colleen();
    return (0);
}