//
//  DataStore.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

struct DataStore {
    let firstNameList: [String] 
    let lastNameList: [String]
    let phoneNumberList: [String]
    let emailList: [String]
}

extension DataStore {
    static func getFirstNameShuffledList() -> [String] {
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
    
    static func getLastNameShuffledList() -> [String] {
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
    
    static func getPhoneNumberShuffledList() -> [String] {
        [
            "+1 000 111-1111",
            "+1 000 222-2222",
            "+1 000 333-3333",
            "+1 000 444-4444",
            "+1 000 555-5555",
            "+1 000 666-6666",
            "+1 000 777-7777",
            "+1 000 888-8888",
            "+1 000 999-9999"
        ]
            .shuffled()
    }
    
    static func getEmailShuffledList() -> [String] {
        [
            "mail_1@mail.mail",
            "mail_2@mail.mail",
            "mail_3@mail.mail",
            "mail_4@mail.mail",
            "mail_5@mail.mail",
            "mail_6@mail.mail",
            "mail_7@mail.mail",
            "mail_8@mail.mail",
            "mail_9@mail.mail"
        ]
            .shuffled()
    }
}
