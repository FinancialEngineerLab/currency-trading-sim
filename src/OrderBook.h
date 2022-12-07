#pragma once
#include "OrderBookEntry.h"
#include "CSVReader.h"
#include <string>
#include <vector>

class OrderBook {
    public:
    /** Construct, reading a csv data file */
        OrderBook(std::string filename);
    /** Return vector of all known products in the dataset*/
        std::vector<std::string> getKnownProduct();
    /** Return vector of Orders according to the sent filters*/
        std::vector<OrderBookEntry> getOrders(  OrderBookType type,
                                                std::string product,
                                                std::string timestamp);
    /** Returns the earliest time in the orderbook */
        std::string getEarliestTime();
    /** Returns the next time after the sent time in the orderbook.
     * If there is no next timestamp, wraps around to the start.
    */
        std::string getNextTime(std::string timestamp);
        void insertOrder(OrderBookEntry& order);

        std::vector<OrderBookEntry> matchAsksToBids(std::string product, std::string timestamp);

        static double getHighPrice(std::vector<OrderBookEntry>& orders);
        static double getLowPrice(std::vector<OrderBookEntry>& orders);
        static double getMeanValue(std::vector<OrderBookEntry>& orders);
        static float diffBidAsk(float askMean, float bidMean);

    private:
        std::vector<OrderBookEntry> orders;
};