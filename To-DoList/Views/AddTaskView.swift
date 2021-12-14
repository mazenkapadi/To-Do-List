//
//  AddTaskView.swift
//  To-DoList
//
//  Created by Mazen Kapadi on 14/12/21.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(
                "Enter your task here",
                text: $title
            )
                .textFieldStyle(.roundedBorder)

            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(red: 0.8666666666666667, green: 0.2901960784313726, blue: 0.2823529411764706))
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(red: 0.5647058823529412, green: 0.6666666666666666, blue: 0.796078431372549))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
