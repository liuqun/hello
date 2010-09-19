
local_source_files := hello.c config.c
local_object_files := $(local_source_files:.c=.o)
local_executable_files := hello
local_executable_files := $(addsuffix $(EXEEXT), $(local_executable_files))

$(addsuffix $(EXEEXT), hello): LDLIBS+=$(GTK_LIBS)
$(addsuffix $(EXEEXT), hello): $(local_object_files)
hello.o: CFLAGS+=$(GTK_CFLAGS)
config.o: CPPFLAGS+=-DLOCALEDIR=\"$(localedir)\"
hello.pot: $(local_source_files)
zh_CN.po: hello.pot
	msgmerge --quiet --update $@ $<
zh_CN.mo: zh_CN.po
#-------------------------------------------------

executable_files += $(local_executable_files)
source_files += $(local_source_files)
object_files += $(local_object_files)
