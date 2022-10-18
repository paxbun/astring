; Copyright (c) 2018 Chanjung Kim. All rights reserved.

.code

public astrncpy

astrncpy proc

	mov		rax,	rcx

_comp:
	cmp		r8,		0
	jne		_loop
	ret

_loop:
	dec		r8
	mov		r9b,	byte ptr[rdx]
	mov		byte ptr[rcx],	r9b
	inc		rcx
	inc		rdx
	cmp		r9b,	0
	je		_zero
	jmp		_comp
	

_zero:
	mov		byte ptr[rcx],	0
	inc		rcx
	dec		r8
	cmp		r8,		0
	jne		_zero
	ret

astrncpy endp

end