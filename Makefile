SFML = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio 
CC = g++
CFLAGS = -c
DEBUG = -g
objects = line.o wall.o lightRay.o lightSource.o simulation.o main.o
all: rayCasting link

rayCasting: $(objects)

line.o : rayCasting/src/line/line.cpp rayCasting/src/line/line.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/src/line/line.cpp

wall.o : rayCasting/src/wall/wall.cpp rayCasting/src/wall/wall.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/src/wall/wall.cpp

lightRay.o : rayCasting/src/light/lightRay.cpp rayCasting/src/light/lightRay.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/src/light/lightRay.cpp

lightSource.o : rayCasting/src/light/lightSource.cpp rayCasting/src/light/lightSource.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/src/light/lightSource.cpp

simulation.o : rayCasting/src/simulation.cpp rayCasting/src/simulation.h
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/src/simulation.cpp

main.o : rayCasting/src/main.cpp 
	$(CC) -IsfmlFiles/include $(CFLAGS) rayCasting/src/main.cpp

link: 
	$(CC) $(objects) -o run -LsfmlFiles/lib $(SFML)

clean:
	rm edit $(objects)