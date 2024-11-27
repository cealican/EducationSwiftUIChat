//
//  Message.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//
import Foundation

class Message: Identifiable {
    var id = UUID()
    var message: String
    var time: Date
    var ownerIsMe: Bool
    
    public init(message: String, time: Date, ownerIsMe: Bool) {
        self.message = message
        self.time = time
        self.ownerIsMe = ownerIsMe
    }
}
