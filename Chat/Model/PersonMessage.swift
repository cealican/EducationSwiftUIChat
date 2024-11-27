//
//  PersonMessage.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//
import Foundation

class PersonMessage: Identifiable {
    var id = UUID()
    var person: Person
    var messageList: [Message]
    
    public init(person: Person, messageList: [Message]) {
        self.person = person
        self.messageList = messageList
    }
}
