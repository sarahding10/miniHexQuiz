//
//  FinViewController.swift
//  miniQuiz
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class FinViewController: UIViewController {
    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var bigText: UILabel!
    
    var thirdCorrectQuestionCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = String(thirdCorrectQuestionCount) + "/3"
        if(thirdCorrectQuestionCount == 3){
            bigText.text = "Klossylicious Job!"
        }
        else if(thirdCorrectQuestionCount == 2){
            bigText.text = "Good Job!"
        }
        else if(thirdCorrectQuestionCount == 1){
            bigText.text = "Nice try!"
        }
        else{
            bigText.text = "You're not very good at this are you?"
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
