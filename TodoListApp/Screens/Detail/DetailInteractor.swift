//
//  DetailInteractor.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import Foundation

protocol DetailInteractorOutputs: AnyObject {
}

final class DetailInteractor: InteractorHelper, BaseInteractor {
    weak var presenter: DetailInteractorOutputs?
    weak var entities: DetailEntities?
    
}

