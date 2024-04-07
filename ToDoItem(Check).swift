//
//  ToDoItem(Check).swift
//  ToDoListApp
//
//  Created by Fiona ZHOU on 2024-04-07.
//

import SwiftUI

struct ToDoItem_Check_: View {
    
    let listText: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "checkmark.circle")
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
    ToDoItem_Check_(listText: "Study for Chemistry quiz")
}
