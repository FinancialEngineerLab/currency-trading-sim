# all: merklerex

# merklerex: main.o CSVReader.o MerkelMain.o OrderBookEntry.o OrderBook.o Wallet.o
# 	g++ --std=c++11 -o merklerex main.o CSVReader.o MerkelMain.o OrderBookEntry.o OrderBook.o Wallet.o

# CSVReader.o: src/CSVReader.cpp src/CSVReader.h
# 	g++ -c -std=c++11 src/CSVReader.cpp

# MerkelMain.o: src/MerkelMain.cpp src/MerkelMain.h
# 	g++ -c -std=c++11 src/MerkelMain.cpp

# OrderBookEntry.o: src/OrderBookEntry.cpp src/OrderBookEntry.h
# 	g++ -c -std=c++11 src/OrderBookEntry.cpp

# OrderBook.o: src/OrderBook.cpp src/OrderBook.h
# 	g++ -c -std=c++11 src/OrderBook.cpp

# Wallet.o: src/Wallet.cpp src/Wallet.h
# 	g++ -c -std=c++11 src/Wallet.cpp

# main.o: src/main.cpp
# 	g++ -c --std=c++11 src/main.cpp

# clean:
# 	rm *.o merklerex


CC = g++
FLAGS = -g -c -std=c++11

SOURCEDIR = src
BUILDDIR = build

EXECUTABLE = merklerex
SOURCES = $(wildcard $(SOURCEDIR)/*.cpp)
OBJECTS = $(patsubst $(SOURCEDIR)/%.cpp,$(BUILDDIR)/%.o,$(SOURCES))

all: dir $(BUILDDIR)/$(EXECUTABLE)

dir:
	 mkdir -p $(BUILDDIR)

$(BUILDDIR)/$(EXECUTABLE): $(OBJECTS)
	$(CC) $^ -o $@

$(OBJECTS): $(BUILDDIR)/%.o : $(SOURCEDIR)/%.cpp
	$(CC) $(FLAGS) $< -o $@

clean:
	rm -f $(BUILDDIR)/*o $(BUILDDIR)/$(EXECUTABLE)

