//
//  ViewController.swift
//  todo
//
//  Created by FOI on 14.09.2021..
//

import UIKit

class TodoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   

    
    @IBOutlet weak var todoTitleTxt: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    @IBOutlet weak var todoTable: UITableView!
    
    var todos = Array<Todo>()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        todoTable.dataSource = self
        todoTable.delegate = self
        getTodos()
       

    }

        
    @IBAction func addTodo(_ sender: Any) {
        guard let todoItem = todoTitleTxt.text else {
            return
        }
        let todoPriority = prioritySegment.selectedSegmentIndex
        let todo = Todo(item: todoItem, priority: todoPriority)
        NetworkService.shared.addTodo(todo: todo) { todos in
            self.todoTitleTxt.text = ""
            self.todos = todos.items
            self.todoTable.reloadData()
        } onError: { msg in
            debugPrint(msg)
        }
    }
    func getTodos() {
        NetworkService.shared.getTodos { todos in
            self.todos = todos.items
            self.todoTable.reloadData()
        } onError: { msg in
            debugPrint(msg)
        }
        

        
       
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell") as? TodoCell {
            cell.updateCell(todo: todos[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
}

