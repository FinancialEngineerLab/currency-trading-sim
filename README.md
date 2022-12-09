## Description
The goal was to build a currency exchange trading simulation as part of the Object Oriented Programming course. Objectives were to write, compile and run a C++ program that the user could interact with in the console.

## Main bits of the project
* CSV Reader
* Order Book/ Order Book Entry
* Wallet
* Main simulation starter

## Structure of the project
.
├── build
│   └── 20200317.csv
├── Makefile
├── README.md
└── src
    ├── CSVReader.cpp
    ├── CSVReader.h
    ├── main.cpp
    ├── MerkelMain.cpp
    ├── MerkelMain.h
    ├── OrderBook.cpp
    ├── OrderBookEntry.cpp
    ├── OrderBookEntry.h
    ├── OrderBook.h
    ├── Wallet.cpp
    └── Wallet.h


## Requirements
To run and compile the project you will need
* C++ Programming language
* C++ Compiler
* Make utility

## Compile
To run these examples, we will need a terminal and make utility. Contents are in a file called Makefile, and in that directory, run the command make.The executable file will be placed in the build folder and will read .csv file, which is also there.
