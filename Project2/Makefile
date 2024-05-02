# Assembly compiler
AS=nasm
# Assembly flags for 64-bit Linux ELF
ASFLAGS=-f elf64 -g -F dwarf
# Linker
LD=ld
# Linker flags (none specified)
LDFLAGS=
# Source files (all .asm files in the current directory)
SOURCES=$(wildcard ./*.asm)
# Object files (generated from source files)
OBJECTS=$(SOURCES:.asm=.o)
# Executable name
EXECUTABLE=Project2

# Default target: build the executable
all: $(EXECUTABLE)

# Rule to build the executable from object files
$(EXECUTABLE): $(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) -o $@

# Rule to compile each assembly source file into an object file
%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

# Clean up generated files
clean:
	rm -rf *.o *.lst $(EXECUTABLE)
