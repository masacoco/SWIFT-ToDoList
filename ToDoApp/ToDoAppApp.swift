//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Masao Nakama on 11/26/21.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
