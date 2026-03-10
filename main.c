#include <stdio.h>
#include <tamtypes.h>
#include <kernel.h>
#include <sifrpc.h>
#include <debug.h>

int main(int argc, char **argv)
{
    SifInitRpc(0);
    init_scr();

    scr_printf("================================\n");
    scr_printf("Hello from PS2 Homebrew!\n");
    scr_printf("Este é o java.elf rodando no PS2!\n");
    scr_printf("================================\n");

    while(1) {
        SleepThread();
    }
    return 0;
}
