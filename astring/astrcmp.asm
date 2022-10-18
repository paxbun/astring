; Copyright (c) 2018 Chanjung Kim. All rights reserved.

.code

public astrcmp

astrcmp proc

	xor		rax,	rax

_loop:
	mov		r8b,	byte ptr[rcx]
	cmp		r8b,	byte ptr[rdx]
	jg		_great
	jl		_less
	test	r8b,	r8b
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

astrcmp endp

end