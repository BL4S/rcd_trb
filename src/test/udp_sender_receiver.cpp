/************************************************************************/
/*                                                                      */
/* This is a simple prototyping program for the TRB                     */
/*                                                                      */
/* Date:   27 April 2015                                                */
/* Author: Markus Joos                                                  */
/*                                                                      */
/**************** C 2015 - A nickel program worth a dime ****************/

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <netdb.h>
#include "trb.h"
#include "get_input.h"
/**************/
/* Prototypes */
/**************/
void mainhelp(void);
void open_receiver(void);
void open_sender(void);
void receive(void);
void send(void);
void close_receiver(void);
void close_sender(void);
/***********/
/* Globals */
/***********/
int sock_receive,sock_send;
int length_send;
struct sockaddr_in server_send;

/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  u_int fun=1 ;
  while (fun != 0)
  {
    printf("\n");
    printf("Select an option:\n");
    printf("   100 Help\n");
    printf("   1 Open receiver\n");
    printf("   2 Receive messages\n");
    printf("   3 Close receiver\n");
    printf("   10 Open sender\n");
    printf("   11 Send messages\n");
    printf("   12 Close sender\n");
    printf("   0 Exit\n");
    printf("Your choice ");
    fun = getdecd(fun);
    if (fun == 100) mainhelp();
    if (fun == 1) open_receiver();
    if (fun == 2) receive();
    if (fun == 3) close_receiver();
    if (fun == 10) open_sender();
    if (fun == 11) send();
    if (fun == 12) close_sender();
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
void open_receiver(void)
/******************/
{
  int trbport;
  struct sockaddr_in server;
  int length_receive;

    printf(" Port Number \n");
    trbport = getdecd(1234);
    printf(" Port Number = %d\n",trbport);
    
    sock_receive=socket(AF_INET, SOCK_DGRAM, 0);
   if (sock_receive < 0)
  {
     perror("Failed to create socket");
     char* strerr =  strerror(errno);
     printf(" errnostr =  %s\n", strerr);

   }
   length_receive = sizeof(server);
   bzero(&server,length_receive);
   server.sin_family=AF_INET;
   server.sin_addr.s_addr=INADDR_ANY;
   server.sin_port=htons(trbport);
   int ret = bind (sock_receive, (struct sockaddr *)&server,length_receive);
   printf(" return = %d, errno = %d\n",ret,errno);

   if (ret <0)
   {
    perror("binding");
     char* strerr =  strerror(errno);
     printf(" errnostr =  %s\n", strerr);
   }
 }
void open_sender(void)
{
  char ipAddress[20];
  int trbport;
  struct hostent *hp;

    printf(" IP address of server \n");
    getstrd(ipAddress,(char *)"137.138.89.83");
    printf(" IP address of server = %s\n",ipAddress);
    printf(" Port Number\n ");
    trbport = getdecd(1234);
    printf(" Port Number = %d\n",trbport);

    sock_send = socket(AF_INET, SOCK_DGRAM, 0);
    
    if (sock_send < 0)
    {
      perror("socket_send");
     }
    server_send.sin_family = AF_INET;
    hp = gethostbyname(ipAddress);
    if (hp==0)
    {
      perror("Unknown host");
    }
    bcopy((char *)hp->h_addr, (char *)&server_send.sin_addr, hp->h_length);
    server_send.sin_port = htons(trbport);
    length_send=sizeof(struct sockaddr_in);
}
void receive(void)
{
  int n_receive;
  unsigned int  buf[1024];
  int n;
  socklen_t fromlen;
  struct sockaddr_in from;
  fromlen = sizeof(struct sockaddr_in);
  
  printf ("Number of messages =");
  n_receive=getdecd(1);
  for (int i=0; i<n_receive; i++)
  {
  ////Receive  messages on the server
  printf("Waiting for message...\n");
  n = recvfrom(sock_receive,buf,1024,0,(struct sockaddr *)&from,&fromlen);
  if (n < 0)
   {
     perror("Failed to receive the data");
     exit(-1);
   }
   printf("Received a datagram with length %d\n",n);
   for(int i=0; i<n/4 ; i++){
   printf("word number %d = %d/%x\n", i, buf[i], buf[i]);
   }
  }
}
void send(void)
{
  int n_send;
  int n_length;
  int n_seconds;
  int n;
  unsigned int  buffer[1024];

  for (int i=0 ; i<1024; i++)
    {
      buffer[i]=i+3;
    }
    printf("Number of messages = ");
    n_send=getdecd(1);
    printf("Length of messages = ");
    n_length=getdecd(10);
    printf("Number of seconds to sleep = ");
    n_seconds=getdecd(0);
    printf("Going to send the message ...\n");
  //Send a message to a server from client
  for (int i=0; i<n_send; i++){
  n = sendto(sock_send, (char *)buffer, n_length*4, 0, (struct sockaddr *)&server_send,length_send);
  if (n < 0)
  {
    perror("Failed to send the data");
    exit(-1);
  }
  if(n_seconds >0)
  {
    sleep(n_seconds);
  }
 }
}
//close the socket
void close_receiver(void)
{
  int  ret;
  ret = close(sock_receive);
   printf(" return = %d, errno = %d\n",ret,errno);

   if (ret <0)
   {
    perror("close_error");
   }
}
void close_sender(void)
{
  int ret;
  ret = close(sock_send);
   printf(" return = %d, errno = %d\n",ret,errno);
   if (ret <0)
   {
    perror("close_error");
   }
}

