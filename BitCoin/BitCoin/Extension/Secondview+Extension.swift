//
//  second.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/16/21.
//

import UIKit

extension SecondViewController {

    @objc func BitCoin(){
        BitCoinLayer.Shared.bitCoinCall(url: URlBitCoin.url.rawValue) {  bitcoin, error in
      
            guard let safebitcoin = bitcoin else {return}
            self.array = safebitcoin
            for x in safebitcoin{
                self.priceLabel.text = x.price
            }
        }
    }
    func createTimer(){
        _ = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(BitCoin), userInfo: nil, repeats: true)
    }
}
  
