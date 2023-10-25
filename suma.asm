;Autor: Adolfo Cortés Corona
;23/10/2023 09:50:35 p. m.
include 'emu8086.inc'
org 100h
; While 1
InicioWhile1:
MOV AX, i
PUSH AX
MOV AX, 10
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinWhile1
print ''
MOV AX,i
call print_num
MOV AX, i
INC AX
MOV i, AX
JMP InicioWhile1
FinWhile1:
int 20h
RET
define_scan_num
define_print_num
define_print_num_uns
; V a r i a b l e s
altura dw 0h
i dw 0h
j dw 0h
k dw 0h
END
