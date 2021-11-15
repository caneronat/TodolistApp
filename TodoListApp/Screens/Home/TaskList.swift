//
//  TaskList.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import RealmSwift
import Foundation
final class TaskList: Object {
    
    @objc dynamic var id: String?
    @objc dynamic var text: String?
    @objc dynamic var title: String?

    override static func primaryKey() -> String? {
        return "id"
    }
}

