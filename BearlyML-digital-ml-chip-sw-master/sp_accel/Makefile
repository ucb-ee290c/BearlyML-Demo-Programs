# Add <executable name> to the EXECUTABLES list, where <executable name>.c exists

EXECUTABLES=test test-saturation-rest test-saturation-first test-wide-dense test-multiple-requests-fenced test-model-comp test-rand-matrix test-rand-wide-dense test-rand-mega test-generated-diff-order
CC=riscv64-unknown-elf-gcc
CFLAGS=-fno-common -fno-builtin-printf -specs=htif_nano.specs
LDFLAGS=-static

.PHONY: all clean

all: $(EXECUTABLES)

% :: %.c 
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $@

test-all: $(EXECUTABLES)
	bash test-all.sh $(EXECUTABLES)

# compile:
# 	riscv64-unknown-elf-gcc -fno-common -fno-builtin-printf -specs=htif_nano.specs -c test.c
# 	riscv64-unknown-elf-gcc -static -specs=htif_nano.specs test.o -o test

clean:
	rm -f $(EXECUTABLES) *.o

