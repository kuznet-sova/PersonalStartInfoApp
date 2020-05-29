//
//  ViewController.swift
//  PersonalStartInfoApp
//
//  Created by Ирина Кузнецова on 28.05.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var usernameTextFild: UITextField!
    @IBOutlet var passwordTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTextFild.delegate = self
    }

    @IBAction func usernameFild() {
    }
    @IBAction func passwordFild() {
    }
    
    @IBAction func loginButton() {
    }
    @IBAction func forgotUsernameButton() {
    }
    @IBAction func forgetPasswordButton() {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.nextTextField(textField)
        return true
    }
    
    private func nextTextField(_ textField: UITextField) {
        if (self.usernameTextFild != nil) {
            self.passwordTextFild.becomeFirstResponder()
        }
    }
}
