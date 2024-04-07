//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Fiona ZHOU on 2024-04-05.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""

    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ToDoItem(listText: "Study for Chemistry quiz")
                    ToDoItem_Check_(listText: "Finish Computer Science assignment")
                    ToDoItem(listText: "Go for a run around campus")
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $searchText)
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    ContentView()
}
