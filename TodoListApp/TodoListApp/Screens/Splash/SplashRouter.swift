//
//  SplashRouter.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import Foundation

class SplashRouterOutput: BaseRouter{
    private(set) weak var view: BaseView!

    init(_ view: BaseView) {
        self.view = view
    }
    
    func presentHome(){
        HomeRouterInput().present(from: view, entryEntity: HomeEntryEntity())
    }
}

