//
//  Person.swift
//  HomeWork5
//
//  Created by Vlad on 17.12.23..
//

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

