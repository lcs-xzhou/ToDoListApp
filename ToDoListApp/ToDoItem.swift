//
//  ToDoItem.swift
//  ToDoListApp
//
//  Created by Fiona ZHOU on 2024-04-05.
//

import SwiftUI

struct ToDoItem: View {
        
    let listText: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
                .foregroundColor(.blue)
                .padding(.horizontal, 10)
            Text(listText)
        }
        .padding(5)
    }
}

#Preview {
    ToDoItem(listText: "Study for Chemistry quiz")
}
