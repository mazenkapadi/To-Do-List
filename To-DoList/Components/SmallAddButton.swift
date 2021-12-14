//
//  TaskAddButton.swift
//  To-DoList
//
//  Created by Mazen Kapadi on 14/12/21.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(red: 0.8666666666666667, green: 0.2901960784313726, blue: 0.2823529411764706))
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
