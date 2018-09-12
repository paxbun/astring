; Copyright (c) 2018 Freiyer P. Kim. All rights reserved.

.code

public astrstr

astrstr proc

	mov		rax,	rcx
	
_loop:
	xor		r10,	r10

_sub_loop:
	mov		r8b,	byte ptr[rax + r10]
	mov		r9b,	byte ptr[rdx + r10]
	test	r9b,	r9b
	je		_found
	test	r8b,	r8b
	je		_end
	cmp		r8b,	r9b
	jne		_sub_loop_end
	inc		r10
	jmp		_sub_loop

_sub_loop_end:
	inc		rax
	jmp		_loop

_end:
	xor		rax,	rax

_found:
	ret

astrstr endp

end