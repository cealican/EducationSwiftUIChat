//
//  Person.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//

struct Person{
    var name: String
    var surname: String
    
    var fullName: String {
        name + " " + surname
    }
}
