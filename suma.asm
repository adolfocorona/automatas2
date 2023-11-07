;Autor: Adolfo Cortés Corona
;07/11/2023 01:10:29 p. m.
include 'emu8086.inc'
org 100h
print ''
printn ' '
print 'Altura: '
call scan_num
MOV altura, CX
print ''
printn ' '
print 'for:'
printn ' '
print ''
; For: 1
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioFor1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinFor1
; For: 2
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioFor2:
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinFor2
; if: 1
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH AX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif1
print '-'
; else: 1
JMP Eelse1
Eif1:
print '+'
Eelse1:
INC j
JMP InicioFor2
FinFor2:
print ''
printn ' '
print ''
INC i
JMP InicioFor1
FinFor1:
print ''
printn ' '
print 'while:'
printn ' '
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
; While 1
InicioWhile1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinWhile1
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
; While 2
InicioWhile2:
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinWhile2
; if: 2
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH AX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif2
print '-'
; else: 2
JMP Eelse2
Eif2:
print '+'
Eelse2:
MOV AX, j
INC AX
MOV j, AX
JMP InicioWhile2
FinWhile2:
MOV AX, i
INC AX
MOV i, AX
print ''
printn ' '
print ''
JMP InicioWhile1
FinWhile1:
print ''
printn ' '
print 'do:'
printn ' '
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
; Do-While 7
InicioDo-While1:
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
; Do-While 7
InicioDo-While2:
; if: 3
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH AX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif3
print '-'
; else: 3
JMP Eelse3
Eif3:
print '+'
Eelse3:
MOV AX, j
INC AX
MOV j, AX
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinDo-While2
JMP InicioDo-While2
FinDo-While2:
MOV AX, i
INC AX
MOV i, AX
print ''
printn ' '
print ''
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinDo-While1
JMP InicioDo-While1
FinDo-While1:
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
