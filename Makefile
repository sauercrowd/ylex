a.out: lex.yy.c
	gcc lex.yy.c -lfl

lex.yy.c: test.l
	flex test.l

clean:
	rm -rf lex.yy.c a.out

.PHONY: clean
