EE_BIN = java.elf
EE_OBJS = main.o

EE_LIBS = -lkernel-nopatch -lc

all: $(EE_BIN)

clean:
	rm -f *.elf *.o *.a

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
