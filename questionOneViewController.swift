//
//  questionOneViewController.swift
//  miniQuiz
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class questionOneViewController: UIViewController {
    
    var count = 0
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let vc = segue.destination as? secondQuestionViewController {
    vc.correctQuestionCount = count
         }
    }
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func topLeftButtonPressed(_ sender: UIButton) {
        label.isHidden = false
        label.textColor = UIColor.red
        label.text = "Incorrect. Try again."
    }
    
    @IBAction func topRightButtonPressed(_ sender: UIButton) {
        label.isHidden = false
        label.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        label.text = "Correct! Good Job!"
        count = 1
    }
    
    @IBAction func bottomLeftButton(_ sender: UIButton) {
        label.isHidden = false
        label.textColor = UIColor.red
        label.text = "Incorrect. Try again."
    }
    
    @IBAction func bottomRightButton(_ sender: UIButton) {
        label.isHidden = false
        label.textColor = UIColor.red
        label.text = "Incorrect. Try again."
    }
    
    @IBAction func nextSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecond", sender: self)
    }
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
