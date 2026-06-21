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
	sudo cp $(TARGET) /usr/local/bin/gshorts.new
	sudo chmod 755 /usr/local/bin/gshorts.new
	sudo mv /usr/local/bin/gshorts.new /usr/local/bin/gshorts

clean:
	rm -f $(TARGET)