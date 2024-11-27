//
//  MessageListView.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//

import SwiftUI

struct MessageListView: View {
    @Environment(\.dismiss) var dismiss
    var personMessage: PersonMessage
    @State var newMessage: String = ""
    @Binding var hasUpdate: Bool
    
    var body: some View {
        VStack {
            List(personMessage.messageList) { message in
                
                MessageRow(message: message)
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color("bg"))
                
            }
            .listStyle(.plain)
            
            HStack(alignment: .top) {
                TextField("Mesaj yaz", text: $newMessage)
                    .padding(8)
                    .frame(minHeight: 50, maxHeight: 100, alignment: .top)
                    .font(.callout)
                    .foregroundStyle(.black)
                    .background(.white)
                    .cornerRadius(6)
                
                Button{
                    if !newMessage.isEmpty {
                        personMessage.messageList.append(Message(message: newMessage, time: Date(), ownerIsMe: true))
                        // Test
                        personMessage.messageList.append(Message(message: "answer \(newMessage)", time: Date(), ownerIsMe: false))
                        //
                        newMessage = ""
                        self.hasUpdate.toggle()
                    }
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .padding(10)
                        .tint(.black)
                        .frame(width: 50, height: 50)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text(personMessage.person.fullName)
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                }

            }
        }
        .toolbarBackground(Color("bg"), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .background(Color("bg"))
    }
}

#Preview {
    MessageListView(personMessage: personMessageList[0], hasUpdate: .constant(false))
}
