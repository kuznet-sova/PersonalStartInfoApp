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
}

extension User {
    static func checkAutorisationInfo() -> [User] {
        return [
            User(username: "Admin", pussword: "12345")
        ]
    }
}
