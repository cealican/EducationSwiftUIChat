//
//  Data.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//

var personMessageList: [PersonMessage] = [
    .init(person: .init(name: "Ali", surname: "CAN"), messageList: [
        .init(message: "Message 1", time: .init(), ownerIsMe: true),
        .init(message: "Message 2", time: .init(), ownerIsMe: false)
    ]
    ),.init(person: .init(name: "Mustafa", surname: "Yılmaz"), messageList: [
        .init(message: "Message 3", time: .init(), ownerIsMe: true),
        .init(message: "Message 4", time: .init(), ownerIsMe: false)
    ]
    )
]
