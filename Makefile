# O arquivo Makefile permite criar diversas receitas ("labels") que realizam
##diversas funcoes.
# E possivel chamar receitas especificas escrevendo: "make (nome_da_labe)"

ALL = main
all: $(ALL)

main: hello.o myfunctions.o myfunctions2.o
	gcc -o $@ $^ -lm

%.o: %.c
	gcc -c $<

clean:
	rm -f *.s *.o output erro

distclean: clean
	rm -f $(ALL)
