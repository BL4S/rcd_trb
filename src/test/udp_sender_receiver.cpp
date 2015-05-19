/************************************************************************/
/*                                                                      */
/* This is a simple prototyping program for the TRB                     */
/*                                                                      */
/* Date:   27 April 2015                                                */
/* Author: Markus Joos                                                  */
/*                                                                      */
/**************** C 2015 - A nickel program worth a dime ****************/

#include <stdio.h>  //for printf
#include <stdlib.h> //for exit(0)
#include <errno.h>  //for errno - the error number
#include <signal.h> // defines how a program handles various signals while it executes.
#include <sys/types.h> //for data types
#include <unistd.h>
#include <sys/socket.h>  //for socket ofcourse
#include <netinet/in.h>  //for internet doamin address (contains constans and structures)
#include <string.h> //memset
#include <netdb.h> //for network database operation
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
void send_TRB(void);
void open_TRB_File(void);
void send_TRB_File(void);
void receive_TRB_File(void);
void close_TRB_File(void);
void close_receiver(void);
void close_sender(void);
/***********/
/* Globals */
/***********/
int sock_receive,sock_send;
int lengthOfSockaddr_send;
struct sockaddr_in server_send;
FILE* fd_file ;

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
    printf("   20 Send TRB messages\n");
    printf("   21 Open TRB File\n");
    printf("   22 Send TRB File\n");
    printf("   23 Receive TRB File\n");
    printf("   24 Close TRB File\n");
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
    if (fun == 20) send_TRB();
    if (fun == 21) open_TRB_File();
    if (fun == 22) send_TRB_File();
    if (fun == 23) receive_TRB_File();
    if (fun == 24) close_TRB_File();
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
    
    sock_receive=socket(AF_INET, SOCK_DGRAM, 0);//create a raw socket to receive
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
    lengthOfSockaddr_send=sizeof(struct sockaddr_in);
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
  n = sendto(sock_send, (char *)buffer, n_length*4, 0, (struct sockaddr *)&server_send,lengthOfSockaddr_send);
  if (n < 0)
  {
    perror("Failed to send the data");
    exit(-1);
  }
  if(n_seconds >0)
  {
    usleep(n_seconds);
  }
 }
}
void send_TRB(void)
{
  int n_send;
  int n_length;
  int m_seconds;
  int micro_seconds;
  int n;
  unsigned int  buffer[1024];

  printf("Number of messages = ");
  n_send=getdecd(1);
  printf("Number of m_seconds to sleep = ");
  m_seconds=getdecd(0);
  micro_seconds=(m_seconds)*1000;

  //Send a message to a server from client

  for (int i=0; i<n_send; i++){

    float ran_01=float(rand())/RAND_MAX;
    int ran_010 = 10*ran_01;
    printf("ran_010=%d\n" ,ran_010);

    buffer[0]=(50+ran_010)*4;
    n_length = buffer[0];

    for (int j=1 ; j<n_length/4; j++)
      {
        buffer[j]=j+3;
      }

    printf("Going to send the message ...\n");

    n = sendto(sock_send, (char *)buffer, n_length , 0, (struct sockaddr *)&server_send,lengthOfSockaddr_send);

    if (n < 0)
    {
      perror("Failed to send the data");
      exit(-1);
    }
    if(m_seconds >0)
    {
      usleep(micro_seconds);
    }
  }
}
void open_TRB_File(void)
{
  unsigned int file_buf[256];

  fd_file = fopen("network.bin","r");

  if ( fd_file < 0)
    {
      perror(" failed to open file");
      exit(-1);
    }
}
void send_TRB_File(void)
{
  //unsigned int trb_header[3];
  unsigned int trb_data[256];
  int n_words;

      printf("fd_file = %d\n",fd_file);

      n_words = fread(trb_data,sizeof(unsigned int),3,fd_file); // read three integers to our buffer
      printf("n_words : when reading header = %d\n",n_words);
      if ( n_words < 0) 
        {
          perror(" failed to read file");
          exit(-1);
        }
      for (int i = 0; i<n_words; i++)
        {
          printf(" trb_data[%d] = %x \n",i,trb_data[i]);
        }

      if (trb_data[1]!=0x30063)
        {
          printf("trb_data[1] = %x\n");
          exit(-1);
        }

      int n_length = trb_data[2]/sizeof(unsigned int) - 3;
      n_words = fread(&trb_data[3],sizeof(unsigned int),
      n_length,
      fd_file); // read event data

      if ( n_words < n_length)
        {
          printf(" failed to read file\n");
          printf("n_words : %d\n",n_words);
          printf("n_length :%d\n",n_length);
          exit(-1);
        }

      for (int i = 3; i<(n_words+3); i++)
        {
          printf(" trb_data[%d] = %x\n",i,trb_data[i]);
        }

      printf("Going to send the message ...\n");

      int n = sendto(sock_send, (char *)trb_data, trb_data[2] , 0, (struct sockaddr *)&server_send,lengthOfSockaddr_send);

      if (n < 0)
        {
          perror("Failed to send the data");
          exit(-1);
        }
}
void receive_TRB_File(void)
{
  int trb_recive;
  unsigned int  trb_data[256];
  int n_bytes;
  socklen_t fromlen;
  struct sockaddr_in from;
  fromlen = sizeof(struct sockaddr_in);
  
  printf ("Number of messages =");
  trb_recive=getdecd(1);
  for (int i=0; i<trb_recive; i++)
  {
  ////Receive  messages on the server
    printf("Waiting for message...\n");

    n_bytes = recvfrom(sock_receive,trb_data,3*sizeof(unsigned int),
                     MSG_PEEK, (struct sockaddr *)&from,&fromlen);
  
    if (n_bytes < 0)
      {
        perror("Failed to receive the data");
        exit(-1);
      }
    printf("Received a datagram with length %d\n",n_bytes);
  
    for(int i=0; i<n_bytes/sizeof(unsigned int) ; i++)
      {
      
        printf("word number %d = %d/%x\n", i, trb_data[i], trb_data[i]);
      }

    int n_max_bytes = trb_data[2];
    printf("Max bytes = %d\n" , n_max_bytes);
    
    n_bytes = recvfrom(sock_receive,trb_data, n_max_bytes, 
                      0, (struct sockaddr *)&from,&fromlen);
  
    if (n_bytes < 0)
      {
        perror("Failed to receive the data");
        exit(-1);
      }
    
    printf("Received a datagram with length %d\n",n_bytes);
  
    for(int i=0; i<n_bytes/sizeof(unsigned int) ; i++)
      {
        printf("word number %d = %d/%x\n", i, trb_data[i], trb_data[i]);
      }
  }
}
void close_TRB_File(void)
{
  unsigned int file_buf[256];
  fclose(fd_file);

  if ( fd_file < 0)
    {
      perror(" failed to close file");
      exit(-1);
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

