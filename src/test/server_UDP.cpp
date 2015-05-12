/* Creates a datagram server.  The port 
   number is passed as an argument.  This
   server runs forever */

#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <netdb.h>
#include <stdio.h>

#define BUFLEN 512  //Max length of buffer
#define PORT 8888   //The port on which to listen for incoming data

void error(const char *msg)
{
    perror(msg);
    exit(0);
}

int main(int argc, char *argv[])
{
   int sock, length, n;
   socklen_t fromlen;
   struct sockaddr_in server;
   struct sockaddr_in from;
   char buf[1024];

   if (argc < 2) {
      fprintf(stderr, "ERROR, no port provided\n");
      exit(0);
   }
   
   sock=socket(AF_INET, SOCK_DGRAM, 0);
   if (sock < 0) error("Opening socket");
   length = sizeof(server);
   bzero(&server,length);//ilk once buffer i  sifirliyor.bufferin adresi server, ve boyutu. 
   server.sin_family=AF_INET;// internt protocol
   server.sin_addr.s_addr=INADDR_ANY;// makinanin IP  adreesi   
   server.sin_port=htons(atoi(argv[1]));// 1. argumani alip  server.sin_port a atiyor buda port numarasi.
   if (bind(sock,(struct sockaddr *)&server,length)<0) // port u ip adresini birbirine bagliyor birlestiriyor. o port acikmi deilmi ona bakiyor o portta siknti varsa hata veriyor.
       error("binding");
   fromlen = sizeof(struct sockaddr_in);// array in boyutunu buluyor.
   while (1) {
       n = recvfrom(sock,buf,1024,0,(struct sockaddr *)&from,&fromlen);
       if (n < 0) error("recvfrom");
       write(1,"Received a datagram: ",21);//1 numarasi socketi tanimliyor. 21 karakterli sokete data gonderiyor.
       write(1,buf,n);
       n = sendto(sock,"Got your message\n",17,
                  0,(struct sockaddr *)&from,fromlen);
       if (n  < 0) error("sendto");
   }
   return 0;
 }


