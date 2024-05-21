.model small
.stack 100h
.data
.code

main proc
    mov cx, 6
    mov ax,1  
    
    top:
    MUL CX
    LOOP TOP
    
    MOV BX,10
    MOV CX,0
    
    CONVERT:
    XOR DX,DX
    DIV BX
    ADD DL,30H
    PUSH DX
    INC CX
    OR AX,AX
    JNZ CONVERT  
    
    DISPLAY:
    POP DX
    MOV AH,02H
    INT 21H
    LOOP DISPLAY
   
   
   
   
   
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
END MAIN
