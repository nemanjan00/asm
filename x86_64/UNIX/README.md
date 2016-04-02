# x86_64 AT&T/UNIX

## Compile&run

```bash
asm(){
	gcc -c $1.S -o $1.o ; gcc $1.o -o $1.out ; ./$1.out
}
```

## Codes

### SumOfFirstN

Reads n from stdin, loops from 0 to n and calculates sum

