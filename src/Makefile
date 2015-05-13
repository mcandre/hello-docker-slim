# Linux defaults

FORMAT=-f elf64
BIN=hello
OBJ=hello.o

all: $(BIN)

test: $(BIN)
	$(BIN)

$(BIN): $(OBJ)
	ld -o $(BIN) $(OBJ)

$(OBJ): hello.asm
	yasm $(FORMAT) -o $(OBJ) hello.asm

clean:
	-rm hello
	-rm $(OBJ)
