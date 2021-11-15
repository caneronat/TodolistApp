//
//  SplashInteractor.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import Foundation

protocol SplashInteractorOutputs: AnyObject{
}

final class SplashInteractor: InteractorHelper, BaseInteractor{
    weak var presenter: SplashInteractorOutputs?
    weak var entities: SplashEntities?
    
}

