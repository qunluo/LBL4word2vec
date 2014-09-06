tools for computing distributed representtion of words
use LBL model
modify from word2vec
better performance than word2vec in questions released by google
###############
quick start:
make word2vec
time ./word2vec -train text8 -output vectors.bin -cbow 1 -size 200 -window 5 -nce 10 -sample 1e-3 -threads 12 -binary 1
make compute-accuracy
./compute-accuracy vectors.bin 30000 < questions-words.txt
###############
training data text8 can be downloaded from: http://pan.baidu.com/s/1i3eLKbF
###############
questions:luoqun9191@163.com
