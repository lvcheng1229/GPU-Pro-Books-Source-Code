# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),debug)
  OBJDIR     = obj/debug/quadtree_simple
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/quadtree_simple.exe
  DEFINES   += -DGLFW_NO_GLU -DDEBUG -DWINDOWS
  INCLUDES  += -I../../lib -I../../lib/libpng -I../../lib/GLFW
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -Wall -msse -msse2 -g
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -LC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/GLFW -LC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/libpng
  LIBS      += -lC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/GLFW/libglfw3.a -lC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/libpng/zlib.lib -lC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/libpng/libpng14.lib -lopengl32 -lgdi32 -luser32 -lkernel32
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR     = obj/release/quadtree_simple
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/quadtree_simple.exe
  DEFINES   += -DGLFW_NO_GLU -DNDEBUG -DWINDOWS
  INCLUDES  += -I../../lib -I../../lib/libpng -I../../lib/GLFW
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -msse -msse2 -O2
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s -LC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/GLFW -LC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/libpng
  LIBS      += -lC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/GLFW/libglfw3.a -lC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/libpng/zlib.lib -lC:/Users/jdup/Desktop/jdupuy-ltree-22f5e3ff8f99/lib/libpng/libpng14.lib -lopengl32 -lgdi32 -luser32 -lkernel32
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/affine.o \
	$(OBJDIR)/bstrlib.o \
	$(OBJDIR)/buf.o \
	$(OBJDIR)/frustum.o \
	$(OBJDIR)/ft.o \
	$(OBJDIR)/glload.o \
	$(OBJDIR)/image.o \
	$(OBJDIR)/program.o \
	$(OBJDIR)/quadtree.o \
	$(OBJDIR)/timer.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking quadtree_simple
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning quadtree_simple
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/affine.o: ../../src/affine.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/bstrlib.o: ../../src/bstrlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/buf.o: ../../src/buf.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/frustum.o: ../../src/frustum.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ft.o: ../../src/ft.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/glload.o: ../../src/glload.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/image.o: ../../src/image.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/program.o: ../../src/program.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/quadtree.o: ../../src/quadtree.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/timer.o: ../../src/timer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
