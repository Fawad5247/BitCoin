//
//  Enum.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/15/21.
//

import Foundation


enum ViewScreen: String {
    case Seque
}

enum URlBitCoin: String {
    case url = "https://api.nomics.com/v1/currencies/ticker?key=6a6dc6ae190177272c21e6073675aa91f49de586&ids=BTC&interval=1s&convert=USD&per-page=100&page=1"
}

enum ErrorTypes: Error {
    case decodingError
    case networkError
}
