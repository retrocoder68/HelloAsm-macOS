# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _start

.section __TEXT, __text

_start:
	call _main
	ret

