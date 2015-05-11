/********************************************************/
/*  file : get_input.c					*/
/*							*/
/*  functions for interactive input of data		*/
/*							*/
/*  Maintained by: Markus Joos, CERN PH/ESS		*/
/********************************************************/

#include <stdio.h> 
#include <string.h>

/* get ONE decimal integer */
/***************/
long getdec(void)  
/***************/
{
  char sbuf[20];   /* max 19 chars */
  int nfield;
  long nint;

  do 
  {
    fgets(sbuf, 20, stdin);
    nfield = sscanf(sbuf, "%ld", &nint);
    if (nfield < 1) printf(" ??? : ");
  } while (nfield < 1);

  return(nint);
}


/* get ONE hex integer */
/************************/
unsigned long gethex(void)  
/************************/
{
  char sbuf[20];   /* max 19 chars */
  int nfield;
  unsigned long nint;

  do 
  {
    fgets(sbuf, 20, stdin);
    nfield = sscanf(sbuf, "%lx", &nint);
    if (nfield < 1) printf(" ??? : ");
  } while (nfield < 1);

  return(nint);
}


/* get first character */
/*******************/
char getfstchar(void)  
/*******************/
{
  char sbuf[20];   /* max 19 chars */

  fgets(sbuf, 20, stdin);

  return(sbuf[0]);
}


/* get ONE decimal integer with default*/
/*********************/ 
long getdecd(long defa)  
/*********************/ 
{
  char sbuf[20];   /* max 19 chars */
  int nfield;
  long nint;

  printf("[%ld] :", defa); 
  do
  {
    fgets(sbuf, 20, stdin);
    if (strlen(sbuf) == 1) 
      return(defa);
    nfield = sscanf(sbuf, "%ld", &nint);
    if (nfield < 1) 
      printf(" ??? : ");
  } 
  while (nfield < 1);
  return(nint);
}


/* get ONE hex integer */
/***************************************/ 
unsigned long gethexd(unsigned long defa)  
/***************************************/ 
{
  char sbuf[20];   /* max 19 chars */
  int nfield;
  unsigned long nint;
 
  printf("[0x%016lx] :", defa); 
  do
  {
    fgets(sbuf, 20, stdin);
    if (strlen(sbuf) == 1) 
      return(defa);
    nfield = sscanf(sbuf, "%lx", &nint);
    if (nfield < 1) 
      printf(" ??? : ");
  } 
  while (nfield < 1);
  return(nint);
}


/* get ONE 64bit hex integer */
/***************************************************/ 
unsigned long long gethexdll(unsigned long long defa)  
/***************************************************/ 
{
  char sbuf[20];   /* max 19 chars */
  int nfield;
  unsigned long long nint;
 
  printf("[0x%016llx] :", defa); 
  do
  {
    fgets(sbuf, 20, stdin);
    if (strlen(sbuf) == 1) 
      return(defa);
    nfield = sscanf(sbuf, "%llx", &nint);
    if (nfield < 1) 
      printf(" ??? : ");
  } 
  while (nfield < 1);
  
  return(nint);
}


/* get ONE hex float with default*/
/*************************/
float getfloatd(float defa)  
/*************************/
{
  char sbuf[20];   /* max 19 chars */
  int nfield;
  float nfloat;

  printf("[%f] :", defa);
  do
  {
    fgets(sbuf, 20, stdin);
    if (strlen(sbuf) == 1) 
      return(defa);
    nfield = sscanf(sbuf, "%f", &nfloat);
    if (nfield < 1) 
      printf(" ??? : ");
  }
  while (nfield < 1);
  return(nfloat);
}


/*  get string */
/********************************/ 
void getstrd(char* str, char* defa)  
/*********************************/ 
{
  char sbuf[256];   /* max 255 chars, HP Beck 16-02-99 */
 
  printf("[%s] :", defa); 
  fgets(sbuf, 256, stdin);

  if (sbuf[strlen(sbuf) - 1] == '\n') 
    sbuf[strlen(sbuf) - 1] = '\0';

  if (strlen(sbuf)==0) 
    strcpy(str, defa);
  else 
    strcpy(str, sbuf);
  return;
}
