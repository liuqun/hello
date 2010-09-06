execultable_files += hello
source_files  += hello.c
object_files  += hello.o
hello: hello.o
hello.o: hello.c
