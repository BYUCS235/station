CFLAGS=-std=c++11 -g
station: Station.cpp main.cpp Station.h StationInterface.h
	g++ $(CFLAGS) Station.cpp main.cpp -o station