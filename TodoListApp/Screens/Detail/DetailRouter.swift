//
//  DetailRouter.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

class DetailRouterInput: NSObject {
    private func view(entryEntity: DetailEntryEntity) -> DetailViewController {
        let view = DetailViewController()
        let interactor = DetailInteractor()
        let entities = DetailEntities(entryEntity: entryEntity)
        let dependencies = DetailPresenterDependencies(interactor: interactor, router: DetailRouterOutput(view))
        let presenter = DetailPresenter(entities: entities, view: view, dependencies: dependencies)
        view.presenter = presenter
        interactor.entities = entities
        interactor.presenter = presenter
        
        return view
    }
    
    func present(from: BaseView, entryEntity: DetailEntryEntity) {
        from.present(view(entryEntity: entryEntity), animated: true)
    }
}

class DetailRouterOutput: BaseRouter {
    private(set) weak var view: BaseView!

    init(_ view: BaseView) {
        self.view = view
    }
}


