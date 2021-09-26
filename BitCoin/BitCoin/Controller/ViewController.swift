//
//  ViewController.swift
//  BitCoin
//
//  Created by fawad akhtar on 9/15/21.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        self.UserName.delegate = self
        self.password.delegate = self
     }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (UserName.text == "fawad") && (password.text == "123") {
            performSegue(withIdentifier: ViewScreen.Seque.rawValue, sender: self)
        }
         textField.resignFirstResponder()
         return true
     }

    @IBAction func enter(_ sender: UIKeyboardType) {
    }
}
