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
	test al, bl
	je fin
	test al, 0
	je null
	inc rcx
	jmp check
	

fin:
	dec rcx
	mov al, byte [rdi + rcx]
	dec al
	add  al , 1
	movsx rax, al
	ret
	
null:
	xor rax, rax
	ret
	
