local_execultable_file_basename := hello
local_execultable_file := $(addsuffix $(EXEEXT), $(local_execultable_file_basename))
local_source_files :=
local_source_files += hello.c
local_object_files := $(local_source_files:.c=.o)

source_files += $(local_source_files)
object_files += $(local_object_files)
execultable_files += $(local_execultable_file)

$(local_execultable_file): $(local_object_files)
	$(LINK.o) $^ $(LDLIBS) -o $@
$(local_execultable_file): LDLIBS=
