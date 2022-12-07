#pragma once
#include "OrderBookEntry.h"
#include <vector>
#include <string>

class CSVReader {
    public:
        CSVReader();
        /**
         * static keyword allows you to create a function
         * that is neatly namespaced into the class,
         * but you do not need to create an instance of
         * the class (an object) to use it. 
        */
        static std::vector<OrderBookEntry> readCSV(std::string csvFile);
        static std::vector<std::string> tokenise(std::string csvLine, char separator);

        static OrderBookEntry stringsToOBE( std::string priceString,
                                            std::string amountString,
                                            std::string timestamp,
                                            std::string product,
                                            OrderBookType orderType);

    private:
        static OrderBookEntry stringsToOBE(std::vector<std::string> strings);
};