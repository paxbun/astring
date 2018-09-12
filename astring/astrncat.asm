; Copyright (c) 2018 Freiyer P. Kim. All rights reserved.

.code

public astrncat

astrncat proc

	mov		rax,	rcx

_find_end:
	cmp		byte ptr[rcx],	0
	je		_comp
	inc		rcx
	jmp		_find_end

_comp:
	cmp		r8,		0
	je		_zero
	dec		r8
	mov		r9b,	byte ptr[rdx]
	cmp		r9b,	0
	je		_zero
	mov		byte ptr[rcx],	r9b
	inc		rcx
	inc		rdx
	jmp		_comp

_zero:
	mov		byte ptr[rcx],	0
	ret

astrncat endp

end