# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _exit

.section __TEXT, __text

# --- Sys calls ---
SC_EXIT = 0x02000001

_exit:
	movq $SC_EXIT, %rax
	movq $0x0,     %rdi
	syscall
	ret

