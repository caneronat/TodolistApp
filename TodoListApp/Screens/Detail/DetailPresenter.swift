//
//  DetailPresenter.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

typealias DetailPresenterDependencies = (
    interactor: DetailInteractor,
    router: DetailRouterOutput
)

class DetailPresenter: BasePresenter {
    
    var entities: DetailEntities
    private weak var view: DetailViewInputs!
    let dependencies: DetailPresenterDependencies
    
    init(entities: DetailEntities, view: DetailViewInputs, dependencies: DetailPresenterDependencies) {
        self.view = view
        self.entities = entities
        self.dependencies = dependencies
    }
}

extension DetailPresenter: DetailViewOutputs {
    
    func viewDidLoad() {
        setUI()
    }
    
    func setUI(){
        view.getParentController().btnClose.addTarget(self, action: #selector(btnCloseTapped), for: .touchUpInside)
        
        view.getParentController().lblTitle.text = entities.entryEntity.object.title
        view.getParentController().lblTask.text = entities.entryEntity.object.text
    }
    
    @objc func btnCloseTapped(_ sender: UIButton){
        dependencies.router.dismiss(animated: true)
    }
}

extension DetailPresenter: DetailInteractorOutputs{
}

