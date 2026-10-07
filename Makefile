CXX = g++
CXXFLAGS = -Wall -Isrc
OBJ = $(patsubst src/%.cpp, bin/%.o, $(wildcard src/*.cpp))

all: bin/main.exe

bin/main.exe: $(OBJ)
	$(CXX) $(OBJ) -o $@

bin/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f bin/*.o bin/*.exe
