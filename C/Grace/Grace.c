#include <stdio.h>
#define FILENAME "Grace_kid.c"
#define STR "#include <stdio.h>%1$c#define FILENAME %3$cGrace_kid.c%3$c%1$c#define STR %3$c%4$s%3$c%1$c#define MAIN() int main() { FILE *fp = fopen(FILENAME, %3$cw%3$c); fprintf(fp, STR, 10, 9, 34, STR); fclose(fp); return 0; }%1$c/*%1$c%2$cThis program will print its own source when run.%1$c*/%1$cMAIN()"
#define MAIN() int main() { FILE *fp = fopen(FILENAME, "w"); fprintf(fp, STR, 10, 9, 34, STR); fclose(fp); return 0; }
/*
	This program will print its own source when run.
*/
MAIN()