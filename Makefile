CC = gcc

ifeq ($(OS),Windows_NT)
    TARGET = gshorts.exe
	LIBS = $(shell pkg-config --cflags --libs sdl2) -mconsole
else
    TARGET = gshorts
	LIBS = $(shell pkg-config --cflags --libs sdl2)
endif

all: $(TARGET)

$(TARGET): gshorts.c
	$(CC) gshorts.c -o $(TARGET) $(LIBS)

install: $(TARGET)
	cp $(TARGET) /usr/local/bin/

clean:
	rm -f $(TARGET)

