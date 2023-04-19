//
//  Person.swift
//  Contact List
//
//  Created by Kate Kashko on 18.04.2023.
//

import Foundation
struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
   static func getPerson() -> [Person]{
        var persons: [Person] = []
        
        let names = DataStore.dataStore.names.shuffled()
        let surnames = DataStore.dataStore.surnames.shuffled()
        let emails = DataStore.dataStore.emails.shuffled()
        let phoneNumbers = DataStore.dataStore.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}
