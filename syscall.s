# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _sc_exit
.global _sc_write

.section __TEXT, __text

# --- Sys calls ---
SC_EXIT  = 0x02000001
SC_WRITE = 0x02000004

_sc_exit:
	movq $0x0,     %rdi
	movq $SC_EXIT, %rax
	syscall
	ret

_sc_write:
	movq $SC_WRITE, %rax
	syscall
	ret

