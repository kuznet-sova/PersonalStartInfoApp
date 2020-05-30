//
//  User.swift
//  PersonalStartInfoApp
//
//  Created by Ирина Кузнецова on 30.05.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

struct User {
    let username: String
    let pussword: String
    
    init(
        username: String = "Admin",
        pussword: String = "12345"
    ) {
        self.username = username
        self.pussword = pussword
    }
}
