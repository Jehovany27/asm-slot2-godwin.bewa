	bits 64
	section .text
	global my_sous

my_sous:
	xor rdi, rdi
	xor rsi, rsi
	xor rax, rax

loop1:
	cmp byte [rdi + rcx], 0
	je null
	cmp byte [rsi + rcx], 0
	je null

check:
	mov al, byte [rdi + rcx]
	mov bl, byte [rsi + 0]
	cmp al, bl
	je fin
	cmp al, 0
	jz null
	inc rcx
	jmp check
	

fin:
	dec rcx
	mov al, byte [rdi + rcx]
	dec al
	movsx rax, al
	ret
	
null:
	xor rax, rax
	ret
	
