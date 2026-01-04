ASM     = Input.asm
OBJ     = Input.o
TARGET  = demo02

NASM    = nasm
LD      = ld

NASMFLAGS = -f elf64
LDFLAGS   = -no-pie

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

$(OBJ): $(ASM)
	$(NASM) $(NASMFLAGS) -o $@ $<

clean:
	rm -f $(OBJ) $(TARGET)
