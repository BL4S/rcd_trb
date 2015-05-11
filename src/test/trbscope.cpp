/************************************************************************/
/*									*/
/* This is a simple prototyping program for the TRB			*/
/*									*/
/* Date:   27 April 2015						*/
/* Author: Markus Joos							*/
/*									*/
/**************** C 2015 - A nickel program worth a dime ****************/

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include "rcc_error/rcc_error.h"
#include "vme_rcc/vme_rcc.h"
#include "DFDebug/DFDebug.h"
#include "ROSGetInput/get_input.h"
#include "rcd_trb/trb.h"


/**************/
/* Prototypes */
/**************/
void mainhelp(void);
void configure(void);


/***********/
/* Globals */
/***********/

char ipAddress[20];

/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  u_int haveport = 0, trbport = 1234, fun = 1;

  char c;

  while ((c = getopt(argc, argv, "db:")) != -1)
  {
    switch (c) 
    {
      case 'b':	
      {
        trbport  = strtol(optarg, 0, 16); 
	haveport = 1;
      }
      break;
      default:
	printf("Invalid option %c\n", c);
	printf("Usage: %s  [options]: \n", argv[0]);
	printf("Valid options are ...\n");
	printf("-p <port number>: The number of the UDP port on which the data will be sent from the TRB\n");
	printf("\n");
	exit(-1);
    }
  }
  
  if (!haveport)
  {
    printf("Enter the port number\n");
    trbport = getdecd(trbport);
  }

  while (fun != 0)  
  {
    printf("\n");
    printf("Select an option:\n");
    printf("   1 Help\n");  
    printf("   2 Configure the card for data taking\n");  
    printf("   0 Exit\n");
    printf("Your choice ");
    fun = getdecd(fun);
    if (fun == 1) mainhelp();
    if (fun == 2) configure();
  }  
  exit(0);
}


/*****************/
void mainhelp(void)
/*****************/
{
  printf("\n=========================================================================\n");
  printf("Contact markus.joos@cern.ch if you need help\n");
  printf("=========================================================================\n\n");
}


/******************/
void configure(void)
/******************/
{
    printf(" IP address of server  /n");
    getstrd(ipAddress,"123.456.123.456");
    printf(" IP address of server = %s",ipAddress);


}





