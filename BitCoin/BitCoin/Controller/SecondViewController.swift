//
//  SecondViewController.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/15/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    var array: [BitCoinData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BitCoin()
        createTimer()
    }
}
