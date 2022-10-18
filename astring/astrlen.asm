; Copyright (c) 2018 Chanjung Kim. All rights reserved.

.code

public astrlen

astrlen proc

	mov		rax,	rcx

_loop:
	cmp		byte ptr[rax],		0
	je		_end
	inc		rax
	jmp		_loop

_end:
	sub		rax,	rcx
	ret

astrlen endp

end