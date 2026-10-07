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

# testes
LIB = $(filter-out bin/main.o, $(OBJ))

teste: bin/testeRegressivo.exe
	./bin/testeRegressivo.exe

bin/testeRegressivo.exe: test/main.cpp $(LIB)
	$(CXX) $(CXXFLAGS) test/main.cpp $(LIB) -o $@
