SFML = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio 
CC = g++
CFLAGS = -c
DEBUG = -g
objects = line.o wall.o lightRay.o lightSource.o simulation.o main.o
all: rayCasting link

rayCasting: $(objects)

line.o : rayCasting/line/line.cpp rayCasting/line/line.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/line/line.cpp

wall.o : rayCasting/wall/wall.cpp rayCasting/wall/wall.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/wall/wall.cpp

lightRay.o : rayCasting/light/lightRay.cpp rayCasting/light/lightRay.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/light/lightRay.cpp

lightSource.o : rayCasting/light/lightSource.cpp rayCasting/light/lightSource.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/light/lightSource.cpp

simulation.o : rayCasting/simulation.cpp rayCasting/simulation.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/simulation.cpp

main.o : rayCasting/main.cpp 
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/main.cpp

link: 
	$(CC) $(objects) -o run -LsfmlFiles/lib $(SFML)

clean:
	rm edit $(objects)