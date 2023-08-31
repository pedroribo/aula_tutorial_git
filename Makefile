# O arquivo Makefile permite criar diversas receitas ("labels") que realizam
##diversas funcoes.
# E possivel chamar receitas especificas escrevendo: "make (nome_da_labe)"

all: hello

hello: hello.o
	gcc -o hello hello.o -lm

clean:
	rm -f hello.s output erro

distclean: clean
	rm -f hello

hello.o: hello.c
	gcc -c hello.c


