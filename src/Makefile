OBJECTS = creature.o dod.o dodgame.o dungeon.o enhanced.o object.o oslink.o parser.o player.o sched.o viewer.o
OUTPUT  = ../dod

#CXX      = clang++-3.6
CCLINK  = -lGL -lSDL2 -lSDL2_mixer
#RM = rm
# -g is debug
CXXFLAGS = -std=c++11 -c

all: $(OUTPUT)

$(OUTPUT): $(OBJECTS)
	$(CXX) -o $(OUTPUT) $(OBJECTS) $(CCLINK)

creature.o: creature.cpp creature.h dod.h
	$(CXX) $(CXXFLAGS) creature.cpp

dod.o: dod.cpp dod.h dodgame.h player.h object.h creature.h dungeon.h sched.h viewer.h oslink.h parser.h
	$(CXX) $(CXXFLAGS) dod.cpp

dodgame.o: dodgame.cpp dodgame.h player.h object.h viewer.h sched.h creature.h parser.h dungeon.h oslink.h dod.h
	$(CXX) $(CXXFLAGS) dodgame.cpp

dungeon.o: dungeon.cpp dungeon.h dodgame.h player.h sched.h dod.h
	$(CXX) $(CXXFLAGS) dungeon.cpp

enhanced.o: enhanced.cpp oslink.h dodgame.h parser.h enhanced.h dod.h
	$(CXX) $(CXXFLAGS) enhanced.cpp

object.o: object.cpp object.h dodgame.h parser.h oslink.h dod.h
	$(CXX) $(CXXFLAGS) object.cpp

oslink.o: oslink.cpp oslink.h dodgame.h viewer.h sched.h player.h dungeon.h parser.h object.h creature.h enhanced.h dod.h
	$(CXX) $(CXXFLAGS) oslink.cpp

parser.o: parser.cpp parser.h viewer.h dod.h
	$(CXX) $(CXXFLAGS) parser.cpp

player.o: player.cpp player.h dodgame.h viewer.h sched.h parser.h object.h dungeon.h creature.h oslink.h enhanced.h dod.h
	$(CXX) $(CXXFLAGS) player.cpp

sched.o: sched.cpp sched.h player.h viewer.h oslink.h creature.h parser.h dodgame.h dungeon.h object.h dod.h
	$(CXX) $(CXXFLAGS) sched.cpp

viewer.o: viewer.cpp viewer.h oslink.h player.h sched.h parser.h object.h dungeon.h creature.h enhanced.h dod.h
	$(CXX) $(CXXFLAGS) viewer.cpp

clean:
	@echo -n Cleaning...
	$(RM) $(OBJECTS)
	$(RM) $(OUTPUT)
	@echo Done
