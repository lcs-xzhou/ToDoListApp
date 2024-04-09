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

let firstItem = TodoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = TodoItem(title: "Finish Computer Science assignemnt", done: true)

let thirdItem = TodoItem(title: "Go for a run aorund campus", done: false)

let exampleItems = [
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
]
