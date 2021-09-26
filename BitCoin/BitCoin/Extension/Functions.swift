//
//  StringToImage.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/16/21.
//

import UIKit

extension String  {

    func convertStringToImage(imageToString: String) -> UIImage {
        let stringToUrl = URL(string: imageToString)!
        let urlToData = try! Data(contentsOf: stringToUrl)
        return UIImage(data: urlToData)!
    }
}

