//
//  TodoCell.swift
//  todo
//
//  Created by FOI on 14.09.2021..
//

import UIKit

class TodoCell: UITableViewCell {

    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var priorityView: UIView!
    
    func updateCell(todo: Todo) {
        self.itemLbl.text = todo.item
        switch todo.priority {
            case 0:
                self.priorityView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
                break
            case 1:
                self.priorityView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
                break
            default:
                self.priorityView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
                break
        }
        
    }
    

}
