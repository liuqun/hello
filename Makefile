#CC     ?= arm-linux-gcc
#CFLAGS ?= -march=armv4t

programs := hello
sources  := hello.c
objects  := hello.o

.PHONY: all
.PHONY: clean

all: $(programs)

%.o: %.c
	$(COMPILE.c) $< -o $@
%: %.o
	$(LINK.o) $< -o $@

clean:
	$(RM) $(programs) $(objects)

