// Copyright (c) 2018 Chanjung Kim. All rights reserved.

#pragma once

#ifdef __cplusplus
#define EXTERN extern "C"
#else
#define EXTERN extern
#endif

// Descriptions from https://en.cppreference.com/w/c/string/byte

// copies one string to another 
EXTERN	char *	astrcpy		(char * dest, const char * src);
#define	strcpy	astrcpy

// copies a certain amount of characters from one string to another 
EXTERN	char *	astrncpy	(char * dest, const char * src, size_t count);
#define	strncpy	astrncpy

// concatenates two strings
EXTERN	char *	astrcat		(char * dest, const char * src);
#define strcat	astrcat

// concatenates a certain amount of characters of two strings 
EXTERN	char *	astrncat	(char * dest, const char * src, size_t count);
#define strncat	astrncat

// returns the length of a given string 
EXTERN	size_t	astrlen		(const char * str);
#define strlen	astrlen

// compares two strings 
EXTERN	int		astrcmp		(const char * lhs, const char * rhs);
#define	strcmp	astrcmp

// compares a certain number of characters from two strings 
EXTERN	int		astrncmp	(const char * lhs, const char * rhs, size_t num);
#define	strncmp	astrncmp

// finds the first occurrence of a character 
EXTERN	char *	astrchr		(const char * str, int ch);
#define	strchr	astrchr

// finds the last occurrence of a character 
EXTERN	char *	astrrchr	(const char * str, int ch);
#define	strrchr	astrrchr

// returns the length of the maximum initial segment that consists
// of only the characters found in another byte string
EXTERN	size_t	astrspn		(const char * dest, const char * src);
#define	strspn	astrspn

// returns the length of the maximum initial segment that consists 
// of only the characters not found in another byte string
EXTERN	size_t	astrcspn	(const char * dest, const char * src);
#define	strcspn	astrcspn

// finds the first location of any character in one string, in another string 
#ifdef __cplusplus
EXTERN	char *	__astrpbrk	(char *, char *);
inline	char *	astrpbrk	(char * dest, const char * breakset) {
	return __astrpbrk(dest, (char *)breakset);
}
inline	const
		char *	astrpbrk	(const char * dest, const char * breakset) {
	return __astrpbrk((char *)dest, (char *)breakset);
}
#else
EXTERN	char *	astrpbrk	(const char * dest, const char * breakset);
#endif
#define strpbrk	astrpbrk

// finds the first occurrence of a substring of characters
EXTERN	char *	astrstr		(const char * str, const char * substr);
#define strstr	astrstr