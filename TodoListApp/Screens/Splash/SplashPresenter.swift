//
//  SplashPresenter.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import Foundation

typealias SplashPresenterDependencies = (
    interactor: SplashInteractor,
    router: SplashRouterOutput
)

final class SplashPresenter: BasePresenter {
    internal var entities: SplashEntities
    public weak var view: SplashViewInputs!
    let dependencies: SplashPresenterDependencies

    init(entities: SplashEntities,
         view: SplashViewInputs,
         dependencies: SplashPresenterDependencies)
    {
        self.view = view
        self.entities = entities
        self.dependencies = dependencies
    }

}

extension SplashPresenter: SplashViewOutputs {
    func viewDidLoad() {
        setUI()
    }
    
    func setUI(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.dependencies.router.presentHome()
        })
    }
}

extension SplashPresenter: SplashInteractorOutputs{
}

