//
//  ContentView.swift
//  ToDoApp
//
//  Created by Masao Nakama on 11/26/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(userData.tasks){task in
                    Button(action:{
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }
                        
                        self.userData.tasks[index].checked.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                if self.userData.isEditing{
                    Draft()
                }
                else {
                    Button(action: {
                        self.userData.isEditing = true
                    })
                    {
                        Text("+")
                            .font(.title)
                    }
                }
            }
            
            .navigationBarTitle(Text("ToDo List"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action:{
                DeleteTask()
            })
            {
                Text("Delete")
            }
            )
        }
    }
//    チェックがついてないものだけを表字する
    func DeleteTask(){
        let necessaryTask = self.userData.tasks.filter({!$0.checked})
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
