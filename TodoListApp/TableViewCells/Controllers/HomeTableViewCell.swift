//
//  HomeTableViewCell.swift
//  TodoListApp
//
//  Created by Caner Onat on 15.11.2021.
//

import UIKit

final class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTask: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateCell(object: TaskList){
        lblTitle.text = object.title
        lblTask.text = object.text
    }
    
}
