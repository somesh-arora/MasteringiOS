//
//  LearningModuleSelectorViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 7/9/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit

class LearningModuleSelectorViewController: UIViewController {

    @IBAction func module1(_ sender: Any)
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question1"
        myVC.passedAnswerModule = "answer1"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func module2(_ sender: Any)
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question2"
        myVC.passedAnswerModule = "answer2"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func module3(_ sender: Any)
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question3"
        myVC.passedAnswerModule = "answer3"
        self.present(myVC, animated: true, completion: nil)
    }
    @IBAction func module4(_ sender: Any)
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question4"
        myVC.passedAnswerModule = "answer4"
        self.present(myVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
