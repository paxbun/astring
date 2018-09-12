; Copyright (c) 2018 Freiyer P. Kim. All rights reserved.

.code

public astrcat

astrcat proc

	mov		rax,	rcx

_find_end:
	cmp		byte ptr[rcx],	0
	je		_loop
	inc		rcx
	jmp		_find_end

_loop:
	mov		r8b,	byte ptr[rdx]
	mov		byte ptr[rcx],	r8b
	inc		rcx
	inc		rdx
	cmp		r8b,	0
	jne		_loop
	ret

astrcat endp

end