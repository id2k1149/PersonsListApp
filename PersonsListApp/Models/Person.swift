//
//  Person.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersonList() -> [Person] {
        let dataStore = DataStore(
            firstNameList: DataStore.getFirstNameShuffledList(),
            lastNameList: DataStore.getLastNameShuffledList(),
            phoneNumberList: DataStore.getPhoneNumberShuffledList(),
            emailList: DataStore.getEmailShuffledList()
        )
        
        var personList = [Person]()
        
        for index in 0..<dataStore.firstNameList.count {
            let person = Person(firstName: dataStore.firstNameList[index],
                                lastName: dataStore.lastNameList[index],
                                phoneNumber: dataStore.phoneNumberList[index],
                                email: dataStore.emailList[index])
            personList.append(person)
        }
        
        return personList
    }
}
