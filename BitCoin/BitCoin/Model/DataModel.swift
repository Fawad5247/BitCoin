//
//  BitCoinElement.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/15/21.
//

import Foundation

struct BitCoinData : Decodable {
    let id : String?
    let currency : String?
    let symbol : String?
    let name : String?
    let logo_url : String?
    let status : String?
    let price : String?
    let price_date : String?
    let price_timestamp : String?
    let circulating_supply : String?
    let max_supply : String?
    let market_cap : String?
    let market_cap_dominance : String?
    let num_exchanges : String?
    let num_pairs : String?
    let num_pairs_unmapped : String?
    let first_candle : String?
    let first_trade : String?
    let first_order_book : String?
    let rank : String?
    let rank_delta : String?
    let high : String?
    let high_timestamp : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case currency = "currency"
        case symbol = "symbol"
        case name = "name"
        case logo_url = "logo_url"
        case status = "status"
        case price = "price"
        case price_date = "price_date"
        case price_timestamp = "price_timestamp"
        case circulating_supply = "circulating_supply"
        case max_supply = "max_supply"
        case market_cap = "market_cap"
        case market_cap_dominance = "market_cap_dominance"
        case num_exchanges = "num_exchanges"
        case num_pairs = "num_pairs"
        case num_pairs_unmapped = "num_pairs_unmapped"
        case first_candle = "first_candle"
        case first_trade = "first_trade"
        case first_order_book = "first_order_book"
        case rank = "rank"
        case rank_delta = "rank_delta"
        case high = "high"
        case high_timestamp = "high_timestamp"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        currency = try values.decodeIfPresent(String.self, forKey: .currency)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        logo_url = try values.decodeIfPresent(String.self, forKey: .logo_url)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        price = try values.decodeIfPresent(String.self, forKey: .price)
        price_date = try values.decodeIfPresent(String.self, forKey: .price_date)
        price_timestamp = try values.decodeIfPresent(String.self, forKey: .price_timestamp)
        circulating_supply = try values.decodeIfPresent(String.self, forKey: .circulating_supply)
        max_supply = try values.decodeIfPresent(String.self, forKey: .max_supply)
        market_cap = try values.decodeIfPresent(String.self, forKey: .market_cap)
        market_cap_dominance = try values.decodeIfPresent(String.self, forKey: .market_cap_dominance)
        num_exchanges = try values.decodeIfPresent(String.self, forKey: .num_exchanges)
        num_pairs = try values.decodeIfPresent(String.self, forKey: .num_pairs)
        num_pairs_unmapped = try values.decodeIfPresent(String.self, forKey: .num_pairs_unmapped)
        first_candle = try values.decodeIfPresent(String.self, forKey: .first_candle)
        first_trade = try values.decodeIfPresent(String.self, forKey: .first_trade)
        first_order_book = try values.decodeIfPresent(String.self, forKey: .first_order_book)
        rank = try values.decodeIfPresent(String.self, forKey: .rank)
        rank_delta = try values.decodeIfPresent(String.self, forKey: .rank_delta)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        high_timestamp = try values.decodeIfPresent(String.self, forKey: .high_timestamp)
    }

}






















//struct BitCoinElement: Decodable {
//    var id, currency, symbol, name: String
//    var logoURL: String
//    var status, price: String
//    var priceDate, priceTimestamp: Date
//    var circulatingSupply, maxSupply, marketCap, marketCapDominance: String
//    var numExchanges, numPairs, numPairsUnmapped: String
//    var firstCandle, firstTrade, firstOrderBook: Date
//    var rank, rankDelta, high: String
//    var highTimestamp: Date
//
//    enum CodingKeys: String, CodingKey {
//        case id, currency, symbol, name
//        case logoURL = "logo_url"
//        case status, price
//        case priceDate = "price_date"
//        case priceTimestamp = "price_timestamp"
//        case circulatingSupply = "circulating_supply"
//        case maxSupply = "max_supply"
//        case marketCap = "market_cap"
//        case marketCapDominance = "market_cap_dominance"
//        case numExchanges = "num_exchanges"
//        case numPairs = "num_pairs"
//        case numPairsUnmapped = "num_pairs_unmapped"
//        case firstCandle = "first_candle"
//        case firstTrade = "first_trade"
//        case firstOrderBook = "first_order_book"
//        case rank
//        case rankDelta = "rank_delta"
//        case high
//        case highTimestamp = "high_timestamp"
//    }
//}
