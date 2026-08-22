; Please note that this is only for x86_64 CPU's, if you try and run it on a 32 Bit CPU, this will not run.
; Created by the best coder ever: Pieter Tschopp
; *Website: Pieter.tschopp.org
; BTW this is completly free and stuff, ik NO ONE will use this btw, I just like posting in github for NO reason lol

global _start
_start:

        mov ebx, 3
        add ebx, 2
        mov eax, 1
        int 0x80


