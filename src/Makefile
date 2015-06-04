OBJECTS = creature.o dod.o dodgame.o dungeon.o enhanced.o object.o oslink.o parser.o player.o sched.o viewer.o

CC      = clang++-3.6
CCLINK  = -lGL -lGLU -lSDL -lSDL_mixer
OUTPUT  = ../dod
# -g is debug
CCFLAGS = -std=c++11 -g -c

all: $(OUTPUT)

$(OUTPUT): $(OBJECTS)
	$(CC) -o $(OUTPUT) $(OBJECTS) $(CCLINK)

creature.o: creature.cpp creature.h dod.h
	$(CC) $(CCFLAGS) creature.cpp

dod.o: dod.cpp dod.h dodgame.h player.h object.h creature.h dungeon.h sched.h viewer.h oslink.h parser.h
	$(CC) $(CCFLAGS) dod.cpp

dodgame.o: dodgame.cpp dodgame.h player.h object.h viewer.h sched.h creature.h parser.h dungeon.h oslink.h dod.h
	$(CC) $(CCFLAGS) dodgame.cpp

dungeon.o: dungeon.cpp dungeon.h dodgame.h player.h sched.h dod.h
	$(CC) $(CCFLAGS) dungeon.cpp

enhanced.o: enhanced.cpp oslink.h dodgame.h parser.h enhanced.h dod.h
	$(CC) $(CCFLAGS) enhanced.cpp

object.o: object.cpp object.h dodgame.h parser.h oslink.h dod.h
	$(CC) $(CCFLAGS) object.cpp

oslink.o: oslink.cpp oslink.h dodgame.h viewer.h sched.h player.h dungeon.h parser.h object.h creature.h enhanced.h dod.h
	$(CC) $(CCFLAGS) oslink.cpp

parser.o: parser.cpp parser.h viewer.h dod.h
	$(CC) $(CCFLAGS) parser.cpp

player.o: player.cpp player.h dodgame.h viewer.h sched.h parser.h object.h dungeon.h creature.h oslink.h enhanced.h dod.h
	$(CC) $(CCFLAGS) player.cpp

sched.o: sched.cpp sched.h player.h viewer.h oslink.h creature.h parser.h dodgame.h dungeon.h object.h dod.h
	$(CC) $(CCFLAGS) sched.cpp

viewer.o: viewer.cpp viewer.h oslink.h player.h sched.h parser.h object.h dungeon.h creature.h enhanced.h dod.h
	$(CC) $(CCFLAGS) viewer.cpp

clean:
	@echo -n Cleaning...
	@rm *.o
	@rm $(OUTPUT)
	@echo Done
