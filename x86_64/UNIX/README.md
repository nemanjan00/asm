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

### SumOfFirstN

Reads n from stdin, loops from 1 to n and calculates sum

#### Externals

* printf
* scanf

### simpleSerialKey

Simple example for learning cracking

#### Externals

* printf
* scanf

