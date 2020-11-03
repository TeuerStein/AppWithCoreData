//
//  ToDoItem.swift
//  AppWithCoreData
//
//  Created by ALEXANDR DRAGUNOV on 11/2/20.
//

import Foundation
import CoreData

public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var title: String?
}

extension ToDoItem {
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
