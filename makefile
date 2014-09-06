CC = gcc
#The -Ofast might not work with older versions of gcc; in that case, use -O2
CFLAGS = -lm -pthread -O2 -Wall -funroll-loops 

all: word2vec distance compute-accuracy

word2vec : LBL4word2vec.c
	$(CC) LBL4word2vec.c -o word2vec $(CFLAGS)
distance : distance.c
	$(CC) distance.c -o distance $(CFLAGS)
compute-accuracy : compute-accuracy.c
	$(CC) compute-accuracy.c -o compute-accuracy $(CFLAGS)

clean:
	rm -rf word2vec distance compute-accuracy
