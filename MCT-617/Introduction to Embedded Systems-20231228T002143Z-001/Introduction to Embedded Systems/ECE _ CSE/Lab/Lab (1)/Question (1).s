		AREA RESET, DATA, READONLY
				EXPORT  __Vectors
__Vectors
				DCD 	0x20008000 ;initializ sp  
				DCD 	Reset_Handler
				ALIGN
				AREA mycode,code, READONLY
				ENTRY					;
				EXPORT  Reset_Handler
			
Reset_Handler
				LDR R0, =0x20000004
				LDR R2, =0x20000000 
				MOV R3, #3  ; n=20
				MOV R1, #0   ;sum=0
LOOP			CMP R3, #0
				BEQ Endwhile
				ADD R1, R1, R3
				SUB R3, R3, #1 	
				B LOOP

Endwhile  		STR R1, [R0]
				STR R3 , [R2]
		
		
		END
			
			