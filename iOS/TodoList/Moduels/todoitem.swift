//
//  todoitem.swift
//  TodoList
//
//  Created by Bryce Stryker Haug  on 2/27/26.
//

import Foundation

enum ItemStatus: String, CaseIterable {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
    case archived = "Archived"
}

struct TodoItem: Identifiable {
    let id = UUID().uuidString
    let title: String
    let des: String?
    
    let itemStatus: ItemStatus
    
    let createtionDate: Date = Date()
    let lastUpdated: Date = Date()
}
extension TodoItem {
    
    static let mockData: [TodoItem] = [
        TodoItem(
            title: "Finish SwiftUI layout",
            des: "Complete the card design and spacing adjustments",
            itemStatus: .inProgress
        ),
        TodoItem(
            title: "Write unit tests",
            des: "Add tests for ViewModel logic",
            itemStatus: .notStarted
        ),
        TodoItem(
            title: "Push project to GitHub",
            des: "Create repository and push initial commit",
            itemStatus: .completed
        ),
        TodoItem(
            title: "Refactor networking layer",
            des: nil,
            itemStatus: .archived
        ),
        TodoItem(
            title: "Design onboarding screen",
            des: "Add illustrations and improve typography",
            itemStatus: .inProgress
        )
    ]
}
