CC = gcc
CFLAGS = -DDEBUG -g -c -std=c99 -I ../include -Wall
CBUILD = ../src/

OBJS = main.o param.o imgheader.o file.o mem.o core.o
ROBJS = file.o mem.o readtool.o md5.o

TARGET = imgtool

.PHONY: build clean rtool

build: $(TARGET)

%.o:$(CBUILD)%.c
	$(CC) $(CFLAGS) -o $@ $<

$(TARGET): $(OBJS)
	$(CC) -o $@ -static $(OBJS)

rtool: $(ROBJS)
	$(CC) -o $@ -static $(ROBJS)
	cp imgtool rtool ../script

clean:
	rm -f $(OBJS) $(TARGET) rtool $(ROBJS)