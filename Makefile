CC = gcc
CFLAGS = -O2 -fPIC -Wall -D_GNU_SOURCE
TARGET = dh64.dll
SHARED = -shared
LUADIR = "C:\Program Files\Lua\include"
LUALIB = "C:\Program Files\Lua"

.PHONY: all clean

all: $(TARGET)

$(TARGET): dh64.c
	$(CC) $(CFLAGS) $(SHARED) -I$(LUADIR) -L$(LUALIB) -llua54 -o $@ $^

clean:
	rm -f $(TARGET)
