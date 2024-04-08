//
//  TodoItem.swift
//  ToDoListApp
//
//  Created by Fiona ZHOU on 2024-04-08.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = TodoItem(title: "Finish Computer Science assignemnt", done: true)

let thirdItem = TodoItem(title: "Go for a run aorund campus", done: false)

let exampleItem = [
    firstItem
    ,
    secondItem
    ,
    thirdItem
]
