//
//  UpdateTaskRouterInput.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

class UpdateTaskRouterInput: NSObject {
    private func view(entryEntity: UpdateTaskEntryEntity) -> UpdateTaskViewController {
        let view = UpdateTaskViewController()
        let interactor = UpdateTaskInteractor()
        let entities = UpdateTaskEntities(entryEntity: entryEntity)
        let dependencies = UpdateTaskPresenterDependencies(interactor: interactor, router: UpdateTaskRouterOutput(view))
        let presenter = UpdateTaskPresenter(entities: entities, view: view, dependencies: dependencies)
        view.presenter = presenter
        interactor.entities = entities
        interactor.presenter = presenter
        
        return view
    }
    
    func present(from: BaseView, entryEntity: UpdateTaskEntryEntity) {
        from.push(view(entryEntity: entryEntity), animated: true)
    }
}

class UpdateTaskRouterOutput: BaseRouter {
    private(set) weak var view: BaseView!

    init(_ view: BaseView) {
        self.view = view
    }
}

