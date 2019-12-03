//
//  HomeViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 7/10/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func learningButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "LearningModuleSelectorViewController") as! LearningModuleSelectorViewController
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func quizButton(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        self.present(myVC, animated: true, completion: nil)
    }
}
