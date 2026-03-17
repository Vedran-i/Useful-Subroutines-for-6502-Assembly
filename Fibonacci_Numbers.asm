;This subroutine calculates Fibonacci numbers

; x = 0
; y = 1
; loop: 
; z = x + y
; x = y
; y = z
; return to loop 
; result: 1, 2, 3, 5, 8, 13, 21, 34, 55...

LDA #$00
STA $01 ; x variable

LDA #$01
STA $02 ; y variable

LDA #$00
STA $03 ; z variable

loop:
LDA $01 ;x
CLC
ADC $02 ;y
STA $03 ;z

LDA $02 ;y
CLC
ADC #$00
STA $01 ;x

LDA $03 ;z
CLC
ADC #$00
STA $02 ;y

JMP loop
; result is in the accumulator displayed in hexadecimal value:
; 01, 02, 03, 05, 08, 0D, 15, 22, 59, 144, 233

