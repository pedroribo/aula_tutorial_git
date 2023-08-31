# O arquivo Makefile permite criar diversas receitas ("labels") que realizam
##diversas funcoes.
# E possivel chamar receitas especificas escrevendo: "make (nome_da_labe)"

all: hello

hello: hello.o myfunctions.o myfunctions2.o
	gcc -o hello hello.o myfunctions.o myfunctions2.o -lm

myfunctions.o: myfunctions.c
	gcc -c myfunctions.c

myfunctions2.o: myfunctions2.c
	gcc -c myfunctions2.c

clean:
	rm -f *.s *.o output erro

distclean: clean
	rm -f hello

hello.o: hello.c
	gcc -c hello.c


