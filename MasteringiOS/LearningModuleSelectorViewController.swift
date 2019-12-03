//
//  LearningModuleSelectorViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 7/9/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit

class LearningModuleSelectorViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func module1(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question1"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func module2(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question2"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func module3(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question3"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func module4(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "question4"
        self.present(myVC, animated: true, completion: nil)
    }
    
    
    @IBAction func designPatternModule(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "designPatternQuestion"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func memoryManagementModule(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "memoryManagementQuestion"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func swiftModule(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "swiftQuestion"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func threadManagementModule(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "threadManagementQuestion"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func testingModule(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "testingQuestion"
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func storyboardModule(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        myVC.passedQuestionModule = "storyboardQuestion"
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
}
