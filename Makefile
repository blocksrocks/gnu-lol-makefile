CC   = gcc
SRC  = c
HEAD = h
OBJ  = o
BIN  = program

$(BIN): *.$(OBJ)
	$(CC) $^ -o $@ 

%.$(OBJ): %.$(SRC) %.$(HEAD)
	$(CC) $^ -c
	rm -f *.gch #oof

asm: *.s

%.s: %.$(SRC)
	$(CC) $^ -S
	
clasm:
	rm -f *.s

cl:
	rm -f $(BIN) *.$(OBJ) *.s *.gch