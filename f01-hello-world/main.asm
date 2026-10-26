; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
; ----------------------------------------------------------------------------------------

format ELF64 executable
entry start

segment readable executable

start:
          mov       rax, 1              ; system call for write
          mov       rdi, 1              ; file handle 1 is stdout
          mov       rsi, msg            ; address of string to output
          mov       rdx, msg_len        ; number of bytes
          syscall                       ; invoke operating system to do the write
          mov       rax, 60             ; system call for exit
          xor       rdi, rdi            ; exit code 0
          syscall                       ; invoke operating system to exit

segment readable
msg       db        "Hello, World!", 10 ; note the newline at the end
msg_len = $ - msg
