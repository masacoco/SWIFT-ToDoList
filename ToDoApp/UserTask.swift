//
//  UserTask.swift
//  ToDoApp
//
//  Created by Masao Nakama on 11/26/21.
//

import SwiftUI

//eachで取り出したいため
struct Task: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String, checked: Bool){
        self.title = title
        self.checked = checked
    }
}
