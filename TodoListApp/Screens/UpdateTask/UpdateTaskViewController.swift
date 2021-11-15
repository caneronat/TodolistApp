//
//  UpdateTaskViewController.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

protocol UpdateTaskViewInputs: AnyObject {
    func getParentController() -> UpdateTaskViewController
}

protocol UpdateTaskViewOutputs: AnyObject {
    func viewDidLoad()
}

final class UpdateTaskViewController: UIViewController {
    
    @IBOutlet weak var tfTask: UITextField!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var btnUpdate: UIButton!
    
    internal var presenter: UpdateTaskViewOutputs?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension UpdateTaskViewController: UpdateTaskViewInputs{
    func getParentController() -> UpdateTaskViewController {
        return self
    }
}

extension UpdateTaskViewController : BaseView {}
