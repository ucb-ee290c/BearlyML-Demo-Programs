riscv64-unknown-elf-gcc -fno-common -fno-builtin-printf -specs=htif_nano.specs -c gppixel.c
riscv64-unknown-elf-gcc -static -specs=htif_nano.specs gppixel.o -o gppixel

cd ../../../sims/vcs
make CONFIG=PixelAccelConfig run-binary-debug BINARY="../../generators/gp-pixel/tests/gppixel"

cd ../../generators/gp-pixel/tests/