//
//  Draft.swift
//  ToDoApp
//
//  Created by Masao Nakama on 11/26/21.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TextField("タスクを入力", text: $taskTitle, onCommit: {
            self.createTask()
            self.userData.isEditing = false
        })
    }
    
    func createTask() {
        let newTask = Task(title: self.taskTitle, checked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
