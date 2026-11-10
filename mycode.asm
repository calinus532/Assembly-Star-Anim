
ORG 100h

.data
VOFFS DB 1
OOFFS DB 1

.code
forever:

    MOV DL,40d
    MOV DH,12d
    MOV AH,02h
    INT 10h
    MOV AL, '*' 
    MOV AH,09h 
    MOV BL, 00010100b 
    MOV CX,1
    INT 10h

    up: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG up
    
    up2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JL up2
    
    down: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL down
    
    down2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JG down2
    
    right: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        ADD DL,4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 79d
    JL right
    
    right2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        SUB DL,4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 40d
    JG right2
    
    left: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        SUB DL, 4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 0d
    JG left
    
    left2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        ADD DL, 4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 40d
    JL left2
    
    upright: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG upright
    
    upright2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JL upright2
    
    upleft: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG upleft
    
    upleft2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JL upleft2
    
    downleft: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL downleft
    
    downleft2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JG downleft2
    
    downright: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL downright
    
    downright2: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JG downright2
    
    upleft3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG upleft3
    
    left3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        SUB DL, 4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 0d
    JG left3
    
    down3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL down3
    
    down4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG down4
    
    downright3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL downright3
    
    downright4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG downright4
    
    right3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        ADD DL,4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 76d
    JL right3
    
    MOV AL, ' ' 
    MOV AH,09h 
    MOV BL, 00000000b 
    MOV CX,1
    INT 10h
    MOV DL,79d
    MOV AH,02h
    INT 10h
    MOV AL, '*' 
    MOV AH,09h 
    MOV BL, 00010100b 
    MOV CX,1
    INT 10h
    
    downleft3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL downleft3
    
    downleft4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG downleft4
    
    down5: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL down5
    
    upleft4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG upleft4
    
    upleft5: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL upleft5
    
    left4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        SUB DL, 4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 4d
    JG left4
    
    MOV AL, ' ' 
    MOV AH,09h 
    MOV BL, 00000000b 
    MOV CX,1
    INT 10h
    MOV DL,0d
    MOV AH,02h
    INT 10h
    MOV AL, '*' 
    MOV AH,09h 
    MOV BL, 00010100b 
    MOV CX,1
    INT 10h
    
    upright3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG upright3
    
    upright4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        SUB DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 24d
    JL upright4
    
    up3: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        DEC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 0d
    JG up3
    
    MOV DH, 0d
    MOV DL, 0d
    MOV AH,02h
    INT 10h
    MOV AL, '*' 
    MOV AH,09h 
    MOV BL, 00010100b 
    MOV CX,1
    INT 10h
    
    MOV CX, 0008Fh
    delay1:
        LOOP delay1
    
    spiral1:
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, 80d
        SUB AH, [OOFFS]
        MOV DL, AH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay2:
            LOOP delay2
        
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, 25d
        SUB AH, [VOFFS]
        MOV DH, AH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay3:
            LOOP delay3
        
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, [OOFFS]
        DEC AH
        MOV DL, AH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay4:
            LOOP delay4
        
        INC VOFFS
        ADD OOFFS, 3
        
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, [VOFFS]
        DEC AH
        MOV DH, AH
        MOV DL, [OOFFS]
        DEC DL
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay5:
            LOOP delay5
            
        CMP VOFFS, 13d
                 
    JNZ spiral1
    
    MOV AL, ' ' 
    MOV AH,09h 
    MOV BL, 00000000b 
    MOV CX,1
    INT 10h
    MOV AH, 80d
    SUB AH, [OOFFS]
    MOV DL, AH
    MOV AH,02h
    INT 10h
    MOV AL, '*' 
    MOV AH,09h 
    MOV BL, 00010100b 
    MOV CX,1
    INT 10h
    
    
    MOV CX, 0008Fh
    delay6:
        LOOP delay6
    
    spiral2:
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV DL, [OOFFS]
        DEC DL
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        DEC VOFFS
        SUB OOFFS, 3
        
        MOV CX, 0008Fh
        delay7:
            LOOP delay7
        
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, 25d
        SUB AH, [VOFFS]
        MOV DH, AH
        MOV DL, [OOFFS]
        DEC DL
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay8:
            LOOP delay8
        
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, 80d
        SUB AH, [OOFFS]
        MOV DL, AH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay9:
            LOOP delay9
    
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        MOV AH, 80d
        MOV DH, [VOFFS]
        DEC DH
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        
        MOV CX, 0008Fh
        delay10:
            LOOP delay10
            
        CMP VOFFS, 1d
                 
    JNZ spiral2
    
    MOV AL, ' ' 
    MOV AH,09h 
    MOV BL, 00000000b 
    MOV CX,1
    INT 10h
    MOV DL, [OOFFS]
    DEC DL
    MOV AH,02h
    INT 10h
    MOV AL, '*' 
    MOV AH,09h 
    MOV BL, 00010100b 
    MOV CX,1
    INT 10h
    
    MOV CX, 00008h
    delay11:
        LOOP delay11
        
    downright5: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        INC DH
        ADD DL, 3
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DH, 12d
    JL downright5
    
    right4: 
        MOV AL, ' ' 
        MOV AH,09h 
        MOV BL, 00000000b 
        MOV CX,1
        INT 10h
        ADD DL,4
        MOV AH,02h
        INT 10h
        MOV AL, '*' 
        MOV AH,09h 
        MOV BL, 00010100b 
        MOV CX,1
        INT 10h
        CMP DL, 40d
    JL right4    
    
    MOV AL, ' ' 
    MOV AH,09h 
    MOV BL, 00000000b 
    MOV CX,1
    INT 10h
    
    CMP CX,0
JG forever

RET




