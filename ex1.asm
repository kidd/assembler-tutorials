%include 'nasmx.inc'
%include 'linux/libc.inc'
%include 'linux/syscall.inc'

[section .data]
msg		DB	10,"Hello, World!!!",10,10,0
msglen		equ	($ - msg)

IMPORT fastcall, printf

  ENTRY my_main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[section .text]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  PROC my_main
  LOCALS NONE
  INVOKE printf, message

  ENDPROC

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[section .data]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


message: declare(NASMX_TCHAR) NASMX_TEXT('Hello, World!'),13,10,0
