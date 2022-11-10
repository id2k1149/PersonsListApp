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
    
    static func getPersonList() -> [Person] {
        let dataStore = DataStore(firstNameList: DataStore.getFirstNameList(),
                                  lastNameList: DataStore.getLastNameList(),
                                  phoneNumberList: DataStore.getPhoneNumberList(),
                                  emailList: DataStore.getEmailList())
        
        var personList = [Person]()
        
        for index in 0...(dataStore.firstNameList.count - 1) {
            let person = Person(firstName: dataStore.firstNameList[index],
                                lastName: dataStore.lastNameList[index],
                                phoneNumber: dataStore.phoneNumberList[index],
                                email: dataStore.emailList[index])
            personList.append(person)
        }
        
        return personList
    }
}
