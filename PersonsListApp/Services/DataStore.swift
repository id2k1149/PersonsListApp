//
//  DataStore.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

import Foundation

struct DataStore {
    let firstNameList: [String]
    let lastNameList: [String]
    let phoneNumberList: [String]
    let emailList: [String]
}

extension DataStore {
    static func getFirstNameList() -> [String] {
        [
            "Bruce",
            "Sharon",
            "Tim",
            "Carl",
            "Aaron",
            "John",
            "Steven",
            "Nicola",
            "Ted"
        ]
            .shuffled()
    }
    
    static func getLastNameList() -> [String] {
        [
            "Pennyworth",
            "Dow",
            "Smith",
            "Williams",
            "Isaacson",
            "Robertson",
            "Murhy",
            "Black",
            "Butler"
        ]
            .shuffled()
    }
    
    static func getPhoneNumberList() -> [String] {
        [
            "+7 495 111-1111",
            "+7 495 222-2222",
            "+7 495 333-3333",
            "+7 495 444-4444",
            "+7 495 555-5555",
            "+7 495 666-6666",
            "+7 495 777-7777",
            "+7 495 888-8888",
            "+7 495 999-9999"
        ]
            .shuffled()
    }
    
    static func getEmailList() -> [String] {
        [
            "mail_1@mail.ru",
            "mail_2@mail.ru",
            "mail_3@mail.ru",
            "mail_4@mail.ru",
            "mail_5@mail.ru",
            "mail_6@mail.ru",
            "mail_7@mail.ru",
            "mail_8@mail.ru",
            "mail_9@mail.ru"
        ]
            .shuffled()
    }
}
