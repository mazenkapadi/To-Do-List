//
//  ContentView.swift
//  To-DoList
//
//  Created by Mazen Kapadi on 14/12/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(red: 0.5647058823529412, green: 0.6666666666666666, blue: 0.796078431372549))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
