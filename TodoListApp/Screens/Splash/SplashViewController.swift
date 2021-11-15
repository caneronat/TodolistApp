//
//  SplashViewController.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

protocol SplashViewInputs: AnyObject {
    func getParentController() -> SplashViewController
}

protocol SplashViewOutputs: AnyObject {
    func viewDidLoad()
}

final class SplashViewController: UIViewController{
    
    internal var presenter: SplashPresenter!
    
    override func viewDidLoad() {
        let interactor = SplashInteractor()
        let entities = SplashEntities()
        let dependencies = SplashPresenterDependencies(interactor: interactor, router: SplashRouterOutput(self))
        presenter = SplashPresenter(entities: entities, view: self, dependencies: dependencies)
        interactor.presenter = presenter
        interactor.entities = entities
        
        presenter.viewDidLoad()
    }
}

extension SplashViewController: SplashViewInputs{
    func getParentController() -> SplashViewController {
        return self
    }
    
}

extension SplashViewController: BaseView {}

