//
//  DetailEntities.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import Foundation

struct DetailEntryEntity {
    let object: TaskList
}

final class DetailEntities {
    var entryEntity: DetailEntryEntity
    
    init(entryEntity: DetailEntryEntity) {
        self.entryEntity = entryEntity
    }
}
