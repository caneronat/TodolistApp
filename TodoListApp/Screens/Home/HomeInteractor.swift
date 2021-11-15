//
//  HomeInteractor.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

protocol HomeInteractorOutputs: AnyObject {
    func onTableViewReady(source: HomeTableViewSource?)
}

final class HomeInteractor: InteractorHelper, BaseInteractor {
    weak var presenter: HomeInteractorOutputs?
    weak var entities: HomeEntities?
    
    func setTableView(router: HomeRouterOutput){
        entities?.results = RealmHelper.getObjects()
        entities?.tableViewSource = HomeTableViewSource(items: entities?.results ?? [], interactor: self, router: router)
        presenter?.onTableViewReady(source: entities?.tableViewSource)
    }
}

