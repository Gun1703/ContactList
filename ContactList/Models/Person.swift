//
//  Person.swift
//  ContactList
//
//  Created by 1234 on 04.03.2023.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    var fullName: String
    
    static func getPerson() -> [Person] {
        var randomPerson: [Person] = []
        let randomName = DataPerson().names.shuffled()
        let randomSurname = DataPerson().surnames.shuffled()
        let randomEmail = DataPerson().emails.shuffled()
        let randomPhone = DataPerson().phones.shuffled()
        
        for item in 0...randomName.count - 1 {
            randomPerson.append(Person(
                name: randomName[item],
                surname: randomSurname[item],
                email: randomEmail[item],
                phone: randomPhone[item],
                fullName: "\(randomName[item]) \(randomSurname[item])")
            )
        }
        return randomPerson
    }
   }


