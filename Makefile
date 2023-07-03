CC = gcc
INCLUDE = include
CFLAGS = -Wall -Wextra -I$(INCLUDE) -O2

SRCS = addition.c division.c multiplication.c soustraction.c main.c
SRCS2 = addition.c division.c multiplication.c soustraction.c mainuser.c

OBJS = $(SRCS:.c=.o)
OBJS2 = $(SRCS2:.c=.o)

TARGET = myprogram
TARGET2 = myprogramuser

EXECFOLDER = deploy
TESTFOLDER = test

all: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $(TARGET)

.PHONY: clean

clean:
	rm -f $(OBJS)

cleantarget:
	rm -f $(TARGET)

cleantests:
	rm -rf $(TESTFOLDER)

cleanbasictestfolder:
	rm -rf $(TESTFOLDER)/basic

cleanusertestfolder:
	rm -rf $(TESTFOLDER)/user

cleanbasictest:
	rm -rf $(TESTFOLDER)/basic/$(OBJS)

cleanusertest:
	rm -rf $(TESTFOLDER)/user/$(OBJS2)

cleanexecfolder:
	rm -rf $(EXECFOLDER)

cleanexecbasictest:
	rm -rf $(TESTFOLDER)/basic/$(TARGET)

cleanexecusertest:
	rm -rf $(TESTFOLDER)/user/$(TARGET2)

cleandeploy:
	rm -rf $(EXECFOLDER)

fclean:
	make clean
	make cleantarget
	make cleanexecfolder
	make cleantests
	make cleandeploy

build: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $(TARGET)

builduser: $(OBJS2)
	$(CC) $(CFLAGS) $^ -o $(TARGET2)

test: $(OBJS)
	mkdir -p $(TESTFOLDER)/basic
	$(CC) $(CFLAGS) $^ -o $(TESTFOLDER)/basic/$(TARGET)
	mv *.o $(TESTFOLDER)/basic
	./$(TESTFOLDER)/basic/$(TARGET) 5 2
	./$(TESTFOLDER)/basic/$(TARGET) 4 0
	./$(TESTFOLDER)/basic/$(TARGET) 10 2

testuser: $(OBJS2)
	mkdir -p $(TESTFOLDER)/user
	$(CC) $(CFLAGS) $^ -o $(TESTFOLDER)/user/$(TARGET2)
	mv *.o $(TESTFOLDER)/user
	./$(TESTFOLDER)/user/$(TARGET2)
	./$(TESTFOLDER)/user/$(TARGET2)
	./$(TESTFOLDER)/user/$(TARGET2)

deploy: $(OBJS)
	mkdir -p $(EXECFOLDER)
	$(CC) $(CFLAGS) $^ -o deploy/$(TARGET)
	rm -f $(OBJS)
