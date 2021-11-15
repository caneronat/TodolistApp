//
//  UpdateTaskEntities.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import RxSwift
import RxCocoa

struct UpdateTaskEntryEntity {
    let object: TaskList
}

final class UpdateTaskEntities {
    var entryEntity: UpdateTaskEntryEntity
    let viewTitle = CustomNavigationTitleView.instanceFromNib()
    let disposeBag = DisposeBag()
    var objectTask = TaskList()
    let colorEnabled = UIColor(named: "color_accent")
    let colorDisabled = UIColor(named: "color_accent_secondary_light")
    
    init(entryEntity: UpdateTaskEntryEntity) {
        self.entryEntity = entryEntity
    }
}

