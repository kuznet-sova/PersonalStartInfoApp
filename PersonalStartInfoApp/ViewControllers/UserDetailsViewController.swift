//
//  UserDetailsViewController.swift
//  PersonalStartInfoApp
//
//  Created by Ирина Кузнецова on 30.05.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {

    @IBOutlet var helloUsserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUsserLabel.text = "Hello, \(userName!)"
    }
}
