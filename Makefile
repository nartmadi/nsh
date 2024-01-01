NAME = nsh

CC = gcc

CFLAGS = -Wall -Werror -Wextra

SRCDIR = src
INCDIR = include
BUILDDIR = build

SRC = $(wildcard $(SRCDIR)/*.c)
OBJ = $(SRC:$(SRCDIR)/%.c=$(BUILDDIR)/%.o)

$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -I$(INCDIR) -c $< -o $@

$(BUILDDIR)/$(NAME): $(OBJ)
	$(CC) -o $@ $^

all: $(BUILDDIR)/$(NAME)

clean:
	rm -rf $(BUILDDIR)/*

install: all
	sudo cp $(BUILDDIR)/$(NAME) /usr/local/bin

.PHONY: all clean install
