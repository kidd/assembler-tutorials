%include 'nasmx.inc'
%include 'linux/libc.inc'
%include 'linux/syscall.inc'

IMPORT fastcall, printf

  ENTRY entry_p

segment .bss

counter: 		reserve(uint32_t) 0

[section .text]
  proc length, ptrdiff_t str
  locals none
  xor eax, eax
  endproc

  proc entry_p, ptrdiff_t count, ptrdiff_t cmdline
  locals none

  mov r15, 3
  xor r14,r14

  DO
    INVOKE printf,mymsg, r14
    inc r14
  WHILE r14,<,r15

  if r14,==,r15
    invoke printf, message
  endif

  ; ; pop rsi
  ; pop rsi
  ; pop rsi
  ; ; invoke length, rsi
  ; invoke printf, message
  endproc

[section .data]

message: declare(NASMX_TCHAR) NASMX_TEXT('Hello, macro World!'), 13,10,0
mymsg: declare(NASMX_TCHAR) NASMX_TEXT('my register rcx: %d'), 13,10,0
