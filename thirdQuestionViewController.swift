//
//  thirdQuestionViewController.swift
//  miniQuiz
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class thirdQuestionViewController: UIViewController {
    
    var secondCorrectQuestionCount : Int = 0
    var count = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let vc = segue.destination as? FinViewController {
    vc.thirdCorrectQuestionCount += count + secondCorrectQuestionCount
         }
    }

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var fin: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        fin.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func topLeftButton(_ sender: Any) {
        label.isHidden = false
        label.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        label.text = "Correct! Good Job!"
        fin.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        fin.isHidden = false
        count = 1
    }
    @IBAction func topRightButton(_ sender: Any) {
        label.isHidden = false
        label.textColor = UIColor.red
        label.text = "Incorrect. Try again."
    }
    @IBAction func bottomLeftButton(_ sender: Any) {
        label.isHidden = false
        label.textColor = UIColor.red
        label.text = "Incorrect. Try again."
    }
    @IBAction func bottomRightButton(_ sender: Any) {
        label.isHidden = false
        label.textColor = UIColor.red
        label.text = "Incorrect. Try again."
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        performSegue(withIdentifier: "toFin", sender: self)
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
