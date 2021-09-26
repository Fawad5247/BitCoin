//
//  BitCoinLayer.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/17/21.
//

import Foundation


struct BitCoinLayer {
    static var Shared = BitCoinLayer()
    func bitCoinCall(url: String, completition: @escaping ([BitCoinData]?, ErrorTypes?) -> ()){
        NetWorkService.shared.networkcall(url: url) { result in
            switch result{
            case .success( let data):
                do{
                    let decode = try JSONDecoder().decode([BitCoinData].self, from: data as! Data)
                    DispatchQueue.main.async {
                        completition(decode, nil)
                    }
                }catch {
                    print("my error", error.localizedDescription)
                    print("my error", String(describing: error))
                    completition(nil, .decodingError)
                }
            case .failure(_):
                completition(nil, .networkError)
            }
        }
        }
    }
