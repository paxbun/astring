; Copyright (c) 2018 Freiyer P. Kim. All rights reserved.

.code

public astrspn

astrspn proc

	mov		rax,	rcx

_loop:
	xor		r10,	r10
	mov		r8b,	byte ptr[rax]

_sub_loop:
	mov		r9b,	byte ptr[rdx + r10]
	test	r9b,	r9b
	je		_end
	cmp		r8b,	r9b
	je		_sub_loop_end
	inc		r10
	jmp		_sub_loop

_sub_loop_end:
	inc		rax
	jmp		_loop

_end:
	sub		rax,	rcx
	ret

astrspn endp

end