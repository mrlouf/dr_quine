#include <stdio.h>
#include <stdlib.h>

#define X 5
#define STR "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c#define X %4$d%1$c#define STR %2$c%3$s%2$c%1$c%1$cint main(void)%1$c{%1$c\tint i = X;%1$c\tif (i < 0)%1$c\t\treturn 0;%1$c\tchar src[64];%1$c\tchar bin[64];%1$c\tchar cmd[256];%1$c%1$c\tsnprintf(src, sizeof(src), %2$cSully_%%d.c%2$c, i);%1$c\tFILE *fp = fopen(src, %2$cw%2$c);%1$c\tif (!fp)%1$c\t\treturn 1;%1$c\tfprintf(fp, STR, 10, 34, STR, i - 1);%1$c\tfclose(fp);%1$c%1$c\tsnprintf(bin, sizeof(bin), %2$cSully_%%d%2$c, i);%1$c\tsnprintf(cmd, sizeof(cmd), %2$ccc %%s -o %%s && ./%%s%2$c, src, bin, bin);%1$c\tsystem(cmd);%1$c\treturn 0;%1$c}%1$c"

int main(void)
{
	int i = X;
	if (i < 0)
		return 0;
	char src[64];
	char bin[64];
	char cmd[256];

	snprintf(src, sizeof(src), "Sully_%d.c", i);
	FILE *fp = fopen(src, "w");
	if (!fp)
		return 1;
	fprintf(fp, STR, 10, 34, STR, i - 1);
	fclose(fp);

	snprintf(bin, sizeof(bin), "Sully_%d", i);
	snprintf(cmd, sizeof(cmd), "cc %s -o %s && ./%s", src, bin, bin);
	system(cmd);
	return 0;
}