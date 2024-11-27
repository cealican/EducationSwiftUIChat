//
//  PersonListView.swift
//  Chat
//
//  Created by Ali CAN on 7.11.2024.
//

import SwiftUI

struct PersonListView: View {
    @State var hasUpdate: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                List(personMessageList) { personMessage in
                    ZStack {
                        NavigationLink(destination: MessageListView(personMessage: personMessage, hasUpdate: self.$hasUpdate).navigationBarBackButtonHidden(true))
                        {}.opacity(0)
                        
                        PersonRow(person: personMessage.person, lastMessage: personMessage.messageList.filter{!$0.ownerIsMe}.last)
                            .background(self.hasUpdate ? Color.clear :Color.clear)
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color("bg"))
                }
                .listStyle(.plain)
            }
            .toolbarBackground(Color("bg"), for: .navigationBar)
            .toolbar {
                Text("Sohbetler")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .background(Color("bg"))
        }
    }
}

#Preview {
    PersonListView()
}
