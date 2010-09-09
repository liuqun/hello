
local_source_files := hello.c
local_execultable_files := hello
local_execultable_files := $(addsuffix $(EXEEXT), $(local_execultable_files))

$(addsuffix $(EXEEXT), hello): LDLIBS+=$(GTK_LIBS)
$(addsuffix $(EXEEXT), hello): hello.o
hello.o: CFLAGS+=$(GTK_CFLAGS)

execultable_files += $(local_execultable_files)
source_files += $(local_source_files)
object_files += $(local_source_files:.c=.o)
