//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by FOI on 13.09.2021..
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDesc: String = ""
    var goalType: GoalType = .shortTerm
    
    func initData(description: String, type: GoalType){
        self.goalDesc = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn.bindToKeyboard()
        pointsTxtField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createBtnPressed(_ sender: Any) {
        if pointsTxtField.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
                
            }
        }
        
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDesc
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("succccS")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
        
        
        
    }
}
