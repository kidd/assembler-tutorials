%include 'nasmx.inc'
IMPORT cdecl,printf
  ENTRY my_main
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[section .text]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
%define ODD_OR_EVEN 8
  PROC my_main
  LOCALS NONE
  mov ecx, ODD_OR_EVEN
  mov eax, ecx
  and eax,1
  IF eax,==,0
  INVOKE printf, message, rcx, msgEven
  ELSE
  INVOKE printf, message, rcx, msgOdd
  ENDIF
  ENDPROC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
[section .data]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
message: declare(NASMX_TCHAR) NASMX_TEXT('%d is an %s number.'),13,10,0
msgOdd: declare(NASMX_TCHAR) NASMX_TEXT('ODD'),0
msgEven: declare(NASMX_TCHAR) NASMX_TEXT('EVEN'),0
