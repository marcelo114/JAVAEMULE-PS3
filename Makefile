EE_BIN = java.elf
EE_OBJS = src/main.o

EE_LIBS = -lkernel-nopatch -lc

# Regras para compilar src/
src/%.o: src/%.c
	$(EE_CC) $(EE_CFLAGS) $(EE_INCS) -c $< -o $@

all: $(EE_BIN)

$(EE_BIN): $(EE_OBJS)
	$(EE_CC) -mno-crt0 -nostartfiles -Tlinkfile $(EE_LDFLAGS) \
		-o $(EE_BIN) $(PS2SDK)/ee/startup/crt0.o $(EE_OBJS) $(EE_LIBS) -lps2sdkc -lps2sdk
	$(EE_STRIP) $(EE_BIN)

clean:
	rm -f $(EE_BIN) *.o *.a src/*.o || true  # Ignora se não existir

include Makefile.pref
include Makefile.eeglobal
