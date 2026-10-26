.PHONY: run

all: a.out

main.o: main.asm
	nasm -felf64 -o $@ $<

a.out: main.o
	gcc -o $@ $<

run: a.out
	./a.out

clean:
	rm -f main.o a.out
