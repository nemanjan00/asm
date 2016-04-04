# x86_64 AT&T/UNIX

## Compile&run

```bash
asm(){
	gcc -c $1.S -o $1.o
	gcc $1.o -o $1.out
	
	./$1.out

	rm $1.o
	rm $1.out
}
```
## Compile&debug (no symbols)

```bash
asm-dbg(){
	gcc -c $1.S -o $1.o
	gcc $1.o -o $1.out
	
	gdb ./$1.out

	rm $1.o
	rm $1.out
}
```

## Codes

### sumOfFirstN

Reads n from stdin, loops from 1 to n and calculates sum

### simpleSerialKey

Simple example for learning cracking

### randNumberGuess

This one is written in C and converted to ASM using gcc. 

Simple example of guess number game... 

```bash
gcc -S -o randNumberGuess.S randNumberGuess.c
```
### simpleAddFunction

This one is example of function in ASM

