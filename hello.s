# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _start

.section __TEXT, __text

_start:
	call _main
	ret

_main:
	call _exit
	ret

# --- Sys calls ---
SC_EXIT = 0x02000001

_exit:
	movq $SC_EXIT, %rax
	movq $0x0,     %rdi
	syscall
	ret

