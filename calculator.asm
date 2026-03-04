include irvine32.inc
.data
    msg byte"Enter 1st Number:",0
	msg1 byte"Enter 2nd Number:",0
	msg2 byte"Enter your choice:",0
	msg3 byte"Addition",0
	msg4 byte"Substraction",0
	msg5 byte"Multiplication",0
	msg6 byte"Division",0
	msg7 byte"Invalid Choice",0
	.code 
	   main proc
	          mov edx,offset msg
			  call writestring
			  call readint
			  mov ebx,eax
			  call crlf
			  mov edx,offset msg1
			  call writestring
			  call readint
			  mov ecx,eax
			  call crlf
			  mov edx,offset msg2
			  call writestring
			  call readchar
			  call writechar
			  call crlf
	.if(al == '+')
	   add ebx,ecx
	   mov eax,ebx
	   mov edx,offset msg3
	   call writestring
	   call writeint
	   call crlf
	   .elseif(al == '-')
	   sub ecx,ebx
	   mov eax,ecx
	   mov edx,offset msg4
	   call writestring
	   call writeint
	   call crlf
	   .elseif(al == '*')
	   imul ebx,ecx
	   mov eax,ebx
	   mov edx,offset msg5
	   call writestring
	   call writeint
	   call crlf
	   .elseif(al == '/')
	   mov edx,0
	   mov eax,ebx
	   div ecx
	   mov edx,offset msg6
	   call writestring
	   call writeint
	   call crlf
	   .else
	   mov edx,offset msg7
	   call writestring
	   call crlf
	   .endif
	   exit 
	   main endp 
	   end main