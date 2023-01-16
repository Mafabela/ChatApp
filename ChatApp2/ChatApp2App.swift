//
//  ChatApp2App.swift
//  ChatApp2
//
//  Created by Consultant on 1/15/23.
//

import SwiftUI
import Firebase

@main
struct ChatApp2App: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
