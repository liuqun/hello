
local_source_files := hello.c
local_execultable_files := hello
local_execultable_files := $(addsuffix $(EXEEXT), $(local_execultable_files))

GTK_CFLAGS = -mms-bitfields -IE:/PortableGit/opt/gtk/include/gtk-2.0 -IE:/PortableGit/opt/gtk/lib/gtk-2.0/include -IE:/PortableGit/opt/gtk/include/atk-1.0 -IE:/PortableGit/opt/gtk/include/cairo -IE:/PortableGit/opt/gtk/include/pango-1.0 -IE:/PortableGit/opt/gtk/include/glib-2.0 -IE:/PortableGit/opt/gtk/lib/glib-2.0/include -IE:/PortableGit/opt/gtk/include/freetype2 -IE:/PortableGit/opt/gtk/include -IE:/PortableGit/opt/gtk/include/libpng14
GTK_LDLIBS = -LE:/PortableGit/opt/gtk/lib -lgtk-win32-2.0 -lgdk-win32-2.0 -latk-1.0 -lgio-2.0 -lgdk_pixbuf-2.0 -lpangowin32-1.0 -lgdi32 -lpangocairo-1.0 -lpango-1.0 -lcairo -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lglib-2.0 -lintl

$(addsuffix $(EXEEXT), hello): LDLIBS+=$(GTK_LDLIBS)
$(addsuffix $(EXEEXT), hello): hello.o
hello.o: CFLAGS+=$(GTK_CFLAGS)

execultable_files += $(local_execultable_files)
source_files += $(local_source_files)
object_files += $(local_source_files:.c=.o)
