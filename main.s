# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _main

.section __TEXT, __text

_main:
	call _print_hello
	call _sc_exit
	ret

