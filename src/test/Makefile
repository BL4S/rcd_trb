# Simple Makefile to build test program

all: udp_sender_receiver client_udp server_udp

udp_sender_receiver: udp_sender_receiver.cpp get_input.c
	g++ $^ -o $@

client_udp: client_UDP.cpp
	g++ $^ -o $@

server_udp: server_UDP.cpp
	g++ $^ -o $@
