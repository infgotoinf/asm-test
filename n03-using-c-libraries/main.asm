; ----------------------------------------------------------------------------------------
; Writes "Puts hi" to the console using a C library. Runs on Linux.
;
;     nasm -felf64 main.asm && gcc main.o && ./a.out
; ----------------------------------------------------------------------------------------

; This code doesn't work btw
          global    main
          extern    puts

          section   .text
main:                                   ; This is called by the C library startup code
          mov       rdi, msg            ; First integer (or pointer) argument in rdi
          call      puts                ; puts(msg)
          ret                           ; Return from main back into C library wrapper

msg:
          db        "Puts hi", 0        ; Note strings must be terminated with 0 in C
