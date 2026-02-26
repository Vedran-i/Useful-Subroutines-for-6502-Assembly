;-------------------------------------
;Multiplication loop for Assembly 6502
;Here is an example of 7 x 3
;-------------------------------------

LDX #$01 ;start X at 1

LDA $00
CLC

loop:

ADC #$07 ;the number you want multiplied

CPX #$03 ;The multiplier
BEQ done
INX
JMP loop

done:
STA $370 ;value displayed in VRAM (this is optional) 
BRK
; result is stored in A (7 x 3 = 21, in this case Hex 15)
