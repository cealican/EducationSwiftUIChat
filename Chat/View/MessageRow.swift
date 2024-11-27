//
//  MessageRow.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//

import SwiftUI

struct MessageRow: View {
    let message: Message
    var body: some View {
        HStack {
            if message.ownerIsMe {
                Spacer()
                
            }
            
            VStack(alignment: .leading) {
                Text(message.message)
                    .foregroundStyle(.black)
                    .font(.callout)
                
                HStack {
                    Spacer()
                    Text(message.time.time)
                        .foregroundStyle(.black)
                        .font(.callout)
                }
            }
            .frame(maxWidth: UIScreen.main.bounds.width*0.6)
            .padding(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(message.ownerIsMe ? .sentMessage: .receivedMessage)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .listRowSeparator(.hidden)
            .overlay(alignment: message.ownerIsMe ? .bottomTrailing: .bottomLeading) {
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.title)
                    .rotationEffect(.degrees(message.ownerIsMe ? -45 : 45))
                    .offset(x: message.ownerIsMe ? 10 : -10, y:10)
                    .foregroundColor(message.ownerIsMe ? .sentMessage: .receivedMessage)
            }
            
            
            if !message.ownerIsMe {
                Spacer()
            }
        }
    }
}

#Preview {
    MessageRow(message: personMessageList[0].messageList[0])
}
