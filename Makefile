all: a.out

a.out: lex.yy.c
	gcc -g lex.yy.c -lfl

lex.yy.c: json.l
	flex json.l

clean:
	rm -rf lex.yy.c a.out

.PHONY: all clean
