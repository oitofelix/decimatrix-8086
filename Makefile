all : dcmatrix.com

NASM = nasm

dcmatrix.com :
	$(NASM) -isrc/ -isrc/lib/ -fbin -odcmatrix.com src/dcmatrix.qdt

clean :
	rm -f dcmatrix.com

.PHONY : clean
