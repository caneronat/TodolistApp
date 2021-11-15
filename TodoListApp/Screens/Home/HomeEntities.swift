//
//  HomeEntities.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import Foundation
import RealmSwift

struct HomeEntryEntity {
}

final class HomeEntities {
    var entryEntity: HomeEntryEntity
    let viewTitle = CustomNavigationTitleView.instanceFromNib()
    var tableViewSource: HomeTableViewSource?
    var results: [TaskList] = []
    
    init(entryEntity: HomeEntryEntity) {
        self.entryEntity = entryEntity
    }
}

