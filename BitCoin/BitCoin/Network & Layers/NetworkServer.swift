//
//  NetworkServer.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/16/21.
//

import Foundation

struct NetWorkService{
    static var shared = NetWorkService()
    func networkcall(url: String, completition: @escaping(Result<Any, Error>) -> ()){
        guard let url = URL(string: url) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completition(.failure(error))
            } else if let data = data {
                completition(.success(data))
            }
        }.resume()
    }
}


  
    
