//
//  UserData.swift
//  ToDoApp
//
//  Created by Masao Nakama on 11/26/21.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "散歩", checked: true),
        Task(title: "料理", checked: true),
        Task(title: "筋トレ", checked: true)
    ]
    
    @Published var isEditing: Bool = false
}


