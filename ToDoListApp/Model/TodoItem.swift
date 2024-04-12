//
//  TodoItem.swift
//  ToDoListApp
//
//  Created by Fiona ZHOU on 2024-04-08.
//

import SwiftData

@Model
class TodoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

extension TodoItem {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: TodoItem.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            TodoItem(title: "Go for a walk", done: false)
        )
        container.mainContext.insert(
            TodoItem(title: "Have a nap", done: true)
        )
        container.mainContext.insert(
            TodoItem(title: "Call mom", done: false)
        )

        return container
    }
}
