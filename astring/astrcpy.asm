; Copyright (c) 2018 Freiyer P. Kim. All rights reserved.

.code

public astrcpy

astrcpy proc
	
    mov     rax,    rcx

_loop:
	mov		r8b,	byte ptr[rdx]
	mov		byte ptr[rcx],	r8b
	inc		rcx
	inc		rdx
	cmp		r8b,	0
	jne		_loop
	ret

astrcpy endp

end