# Makefile для Directory Viewer

CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -std=c11 $(shell pkg-config --cflags gtk+-3.0)
LDFLAGS = $(shell pkg-config --libs gtk+-3.0)

TARGET = show_content_directory
SOURCE = show_content_directory.c

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE) $(LDFLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
