all:
	mdpp
	@ tk run 00_alone.hs Readme.md -i 0
	@ tk run 01_str.hs Readme.md -i 1
	@ tk run 02_veclines.hs Readme.md -i 2
	@ tk run 03_many1.hs Readme.md -i 3
	@ tk run 03_many2.hs Readme.md -i 3
	@ tk run 03_many3.hs Readme.md -i 3
	@ tk run 03_many4.hs Readme.md -i 3
	@ tk run 04_single1.hs Readme.md -i 4
	@ tk run 04_single2.hs Readme.md -i 4
	@ tk run 05_formatvet.hs Readme.md -i 5
	@ tk run 06_mat.hs Readme.md -i 6
	@ tk run 07_printf.hs Readme.md -i 7
	@ tk run 08_cmd.hs Readme.md -i 8


%: %.hs
	ghc $@ -o $@.out
	echo "Running $@.out"
	./$@.out < $@.txt

clean:
	rm -f *.o *.hi *.out *.hs *.txt