//
//  AddTaskEntities.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import RxSwift
import RxCocoa

struct AddTaskEntryEntity {
}

final class AddTaskEntities {
    var entryEntity: AddTaskEntryEntity
    let viewTitle = CustomNavigationTitleView.instanceFromNib()
    var objectTask = TaskList()
    let disposeBag = DisposeBag()
    let colorEnabled = UIColor(named: "color_accent")
    let colorDisabled = UIColor(named: "color_accent_secondary_light")
    
    init(entryEntity: AddTaskEntryEntity) {
        self.entryEntity = entryEntity
    }
}

