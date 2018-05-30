//
//  ViewController.swift
//  TextFieldMethod
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtone:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtone.delegate = self
        
       hideKeyboardWhenTappedAround()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       view.endEditing(true)
        print("return")
        return true
    }
    
    @IBAction func submit(sender: UIButton){
        view.endEditing(true)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
