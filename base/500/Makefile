all: aluno str veclines many single

%: %.hs
	ghc $@ -o $@.out
	echo "Running $@.out"
	./$@.out < $@.txt

clean:
	rm *.o *.hi *.out