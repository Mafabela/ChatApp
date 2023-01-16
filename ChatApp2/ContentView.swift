//
//  ContentView.swift
//  ChatApp2
//
//  Created by Consultant on 1/15/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
    //var messageArray = ["Hello!", "How are you doig?", "I've been builiding an app"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in
                    ScrollView{
                        ForEach(messagesManager.messages,
                                id: \.id ) { message in
                            MessegeBubble(message: message)
                        //Message(id: "12345", text: text, received: true, timestamp: Date()))
                                        }
                            }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners:
                                    [.topLeft,
                                    .topRight])
                    .onChange(of: messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(Color("Peach"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
       // .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
