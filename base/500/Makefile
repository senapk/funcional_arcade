all:
	@ tk run 00_alone.hs Readme.md -i 0
	@ tk run 01_str.hs Readme.md -i 1
	@ tk run 02_veclines.hs Readme.md -i 2
	@ tk run 03_many1.hs Readme.md -i 3
	@ tk run 03_many2.hs Readme.md -i 3
	@ tk run 03_many3.hs Readme.md -i 3

%: %.hs
	ghc $@ -o $@.out
	echo "Running $@.out"
	./$@.out < $@.txt

clean:
	rm *.o *.hi *.out