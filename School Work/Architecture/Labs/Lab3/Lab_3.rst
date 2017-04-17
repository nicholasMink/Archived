Nick Mink - Lab 3
=================
Z80SIM
#############

Where?
------
 * https://github.com/LuccoJ/z80sim
What?
-----
Z80SIM is a program that attempts to simulate the behaviour of the Zilog Z80 processor(8 bit). It is able to load a binary program specified by the user into memory that is mapped onto the 64kb address space of the z80, and while it executes the program, it can give some information that can be useful to improve the program.

:pencil2: The Gameboy by Nintendo used a variation of the Z80 processor in their original design!

Implementation
--------------
 * Clone repository from address above
 * Included makefile, just type make!
Example Code
::
    $ ./z80sim rrz80
    $ run
    $ eval 2+2
    (2+2) evaluates to 4
    $ quit

