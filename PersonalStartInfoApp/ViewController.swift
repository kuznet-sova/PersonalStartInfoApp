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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }

    
    @IBAction func usernameFild() {
    }
    @IBAction func passwordFild() {
    }
    
    @IBAction func loginButton() {
//        showAllert(with: "Invalid username or password.",
//                   and: "Please, enter the correct username and password.")
    }
    @IBAction func forgotUsernameButton() {
        showAllert(with: "I'll help you remember 🧙🏼",
                   and: "Your name is Admin")
    }
    @IBAction func forgetPasswordButton() {
        showAllert(with: "🔐",
                   and: "Your password is 12345")
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.usernameTextFild.resignFirstResponder()
        self.nextTextField(textField)
        return true
    }
    
    private func nextTextField(_ textField: UITextField) {
        if (self.usernameTextFild != nil) {
            self.passwordTextFild.becomeFirstResponder()
        }
    }
}

//  MARK: - UIAlertController
extension ViewController {
    private func showAllert(with title: String, and message: String) {
        let allert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.usernameTextFild.text = ""
            self.passwordTextFild.text = ""
        }
        allert.addAction(okAction)
        present(allert, animated: true)
    }
}
