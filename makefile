(CC)=gcc -march=native -mtune=native
all:compile
compile:./src/main.c
	rm -rf ./build
	mkdir build
	$(CC) ./src/main.c -o ./build/main  -lGL -lGLU -lglut -lm
run:
	./build/main
clean:
	rm -rf ./build