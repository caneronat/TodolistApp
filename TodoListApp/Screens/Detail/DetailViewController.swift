//
//  DetailViewController.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

protocol DetailViewInputs: AnyObject {
    func getParentController() -> DetailViewController
}

protocol DetailViewOutputs: AnyObject {
    func viewDidLoad()
}

final class DetailViewController: UIViewController {
    
    @IBOutlet weak var lblTask: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnClose: UIButton!
    
    internal var presenter: DetailViewOutputs?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension DetailViewController: DetailViewInputs{
    func getParentController() -> DetailViewController {
        return self
    }
}

extension DetailViewController : BaseView {}
