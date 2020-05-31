//
//  ViewController.swift
//  PersonalStartInfoApp
//
//  Created by Ирина Кузнецова on 28.05.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var usernameTextFild: UITextField!
    @IBOutlet var passwordTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextFild.delegate = self
        passwordTextFild.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue" {
            guard let tabBar = segue.destination as? UITabBarController,
            let userDetailsVC = tabBar.viewControllers?.first as? UserDetailsViewController
            else { return }
            userDetailsVC.userName = User().username
        }
    }
    
    @IBAction func loginButton() {
        if usernameTextFild.text == User().username &&
            passwordTextFild.text == User().pussword {
        } else {
            showAllert(with: "Invalid username or password.",
            and: "Please, enter the correct username and password.")
        }
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
        usernameTextFild.resignFirstResponder()
        nextTextField(textField)
        if textField == passwordTextFild {
            loginButton()
            performSegue(withIdentifier: "loginSegue", sender: self)
        }
        return true
    }
    
    private func nextTextField(_ textField: UITextField) {
        if (usernameTextFild != nil) {
            passwordTextFild.becomeFirstResponder()
        }
    }
}

//  MARK: - UIAlertController
extension LoginViewController {
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
