//
//  Date+Extension.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//
import Foundation

extension Date {
    public var date: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: self)
    }
    
    public var time: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: self)
    }
}
