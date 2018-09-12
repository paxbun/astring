; Copyright (c) 2018 Freiyer P. Kim. All rights reserved.

.code

public astrrchr

astrrchr proc

	xor		rax,	rax

_loop:
	mov		r8b,	byte ptr[rcx]
	cmp		r8b,	dl
	jne		_not_target
	mov		rax,	rcx
_not_target:
	test	r8b,	r8b
	je		_end
	inc		rcx
	jmp		_loop

_end:
	ret

astrrchr endp

end