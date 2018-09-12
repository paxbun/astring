#include "astring.h"
#include <stdio.h>

int main() {
	
	/* strcpy */ {
		char src[] = "This is the source.", dst[100];
		strcpy(dst, src);
		printf("%s\n", dst);
	}

	/* strncpy */ {
		char src[] = "This is the source.", dst[100];
		strncpy(dst, src, 10);
		dst[10] = 0;
		printf("%s\n", dst);
	}

	/* strcat */ {
		char str1[100] = "This is a ";
		char str2[] = "sentence.";
		printf("%s\n", strcat(str1, str2));
	}

	/* strncat */ {
		char str1[100] = "This is a ";
		char str2[] = "sentence.";
		printf("%s\n", strncat(str1, str2, 5));
	}

	/* strlen */ {
		char str[] = "Hello, world!";
		printf("%d\n", (int)strlen(str));
	}

	/* strcmp */ {
		char str[] = "Hello";
		char str0[] = "Hello", str1[] = "Hellp", str2[] = "Helln";
		printf("%d %d %d\n",
			strcmp(str, str0),
			strcmp(str, str1),
			strcmp(str, str2)
		);
	}

	/* strncmp */ {
		char str0[] = "Hello", str1[] = "Hellp";
		printf("%d %d\n",
			strncmp(str0, str1, 4),
			strncmp(str0, str1, 5)
		);
	}

	/* strchr */ {
		char str[] = "E is the beginning";
		printf("%s\n", strchr(str, 'b'));
	}

	/* strrchr */ {
		char str[] = "egg, even, ext";
		printf("%s\n", strrchr(str, 'e'));
	}

	/* strspn */ {
		char str[] = "129th";
		char set[] = "1234567890";
		printf("%d\n", strspn(str, set));
	}

	/* strcspn */ {
		char str[] = "fcba73";
		char set[] = "1234567890";
		printf("%d\n", strspn(str, set));
	}

	/* strpbrk */ {
		char str[] = "This is a sample string";
		char key[] = "aeiou";
		char * pch = strpbrk(str, key);
		while (pch != NULL)
		{
			printf("%c ", *pch);
			pch = strpbrk(pch + 1, key);
		}
		printf("\n");

	}

	/* strstr */ {
		char str[] = "This is a simple string";
		printf("%s\n", strncpy(strstr(str, "simple"), "sample", 6));
	}

	return 0;
}