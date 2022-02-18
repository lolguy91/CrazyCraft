UNAME_S = $(shell uname -s)

CC = g++
CFLAGS = -fpermissive
CFLAGS += -Ilib/glad/include -Ilib/glfw/include -Isrc -Ilib/stb -Isrc/vendor/  
LDFLAGS = lib/glad/src/glad.o lib/glfw/src/libglfw3.a -ldl -lpthread -lGL -lm



SRC  = $(wildcard src/*.cpp) $(wildcard src/**/*.cpp) $(wildcard src/*.cpp) $(wildcard src/**/**/*.cpp) $(wildcard src/**/**/**/*.cpp)
OBJ  = $(SRC:.cpp=.o)
BIN  = bin


.PHONY: all clean

all: dirs libs game

libs:
	cd lib/glad && $(CC) -o src/glad.o -Iinclude -c src/glad.c
	cd lib/glfw && cmake . && make

dirs:
	mkdir -p ./$(BIN)

run: all
	$(BIN)/game

game: $(OBJ)
	$(CC) -o $(BIN)/game $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf $(BIN) $(OBJ)