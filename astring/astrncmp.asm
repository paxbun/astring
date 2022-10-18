; Copyright (c) 2018 Chanjung Kim. All rights reserved.

.code

public astrncmp

astrncmp proc

	xor		rax,	rax

_loop:
	test	r8,		r8
	je		_equal
	dec		r8
	mov		r9b,	byte ptr [rcx]
	cmp		r9b,	byte ptr [rdx]
	jg		_great
	jl		_less
	test	r9b,	r9b
	je		_equal
	inc		rcx
	inc		rdx
	jmp		_loop

_great:
	or		eax,	1
	ret

_less:
	or		eax,	0FFFFFFFFh
	ret

_equal:
	ret

astrncmp endp

end