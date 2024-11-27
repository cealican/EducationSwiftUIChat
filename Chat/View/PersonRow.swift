//
//  PersonRow.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//

import SwiftUI

struct PersonRow: View {
    var person: Person
    let lastMessage: Message?
    
    var body: some View {
        HStack {
            let letters = String(person.name.first!).uppercased() + String(person.surname.first!).uppercased()
            
            Text(letters)
                .font(.title)
                .frame(width: 50, height: 50)
                .background(.avatarBg)
                .cornerRadius(25)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(person.fullName)
                            .font(.headline)
                        
                        if let message = lastMessage {
                            Text(message.message)
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .fontWeight(.bold)
                                .padding(.top, 4)
                                .lineLimit(2)
                        }
                        Spacer()
                    }
                    
                    Spacer()
                    
                    if let lastMessage {
                        VStack(alignment: .trailing) {
                            Text(lastMessage.time.date)
                            Text(lastMessage.time.time)
                            Spacer()
                        }
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        
                    }
                }
                
                Divider()
            }.padding(.init(top: 6, leading: 16, bottom: 6, trailing: 16))
        }
        .frame(height: 75)
    }
}

#Preview {
    PersonRow(person: .init(name: "Ali", surname: "CAN"), lastMessage: .init(message: "Message 2", time: .init(), ownerIsMe: false))
}
