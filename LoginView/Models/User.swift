//
//  User.swift
//  LoginView
//
//  Created by Onix qq on 3.01.22.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "User",
             password: "123123",
             person: Person.getPerson())
    }
    
    struct Person {
        let name: String
        let surname: String
        let description: String
        let image: String
        
        var fullName: String {
            "\(name) \(surname)"
        }
        
        static func getPerson() -> Person {
            Person(name: "Alexander",
                   surname: "Golovko",
                   description: "Привет.\n Меня зовут Александр и я учусь программировать на языке Swift Привет.\n Меня зовут Александр и я учусь программировать на языке Swift Привет.\n Меня зовут Александр и я учусь программировать на языке Swift Привет.\n Меня зовут Александр и я учусь программировать на языке Swift Привет.\n Меня зовут Александр и я учусь программировать на языке Swift Привет.\n Меня зовут Александр и я учусь программировать на языке Swift Привет.\n Меня зовут Александр и я учусь программировать на языке Swift",
                   image: "swiftImage")
        }
    }
}
