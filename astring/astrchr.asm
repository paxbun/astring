; Copyright (c) 2018 Chanjung Kim. All rights reserved.

.code

public astrchr

astrchr proc

	mov		rax,	rcx
	dec		rax

_loop:
	inc		rax
	mov		r8b,	byte ptr[rax]
	cmp		r8b,	dl
	je		_found
	test	r8b,	r8b
	je		_end
	jmp		_loop

_end:
	xor		rax,	rax

_found:
	ret

astrchr endp

end