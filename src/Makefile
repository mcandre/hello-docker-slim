# Linux defaults

FORMAT=-f elf64
BIN=bin/hello
OBJ=hello.o

all: $(BIN)

test: $(BIN)
	$(BIN)

$(BIN): $(OBJ)
	mkdir -p bin
	ld -o $(BIN) $(OBJ)

$(OBJ): hello.asm
	yasm $(FORMAT) -o $(OBJ) hello.asm

clean:
	-rm -rf bin
	-rm $(OBJ)
