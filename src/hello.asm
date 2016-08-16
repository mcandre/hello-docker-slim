[bits 64]

section .data

msg db "Hello World!", 10, 0

section .text

global _start

_start:
  ;;  write
  mov rsi, dword msg
  mov rdx, 13
  push 0x1
  pop rax
  mov rdi, rax
  syscall

  ;; exit
  xor rdi, rdi
  push 0x3c
  pop rax
  syscall
