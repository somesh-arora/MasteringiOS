//
//  HomeViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 7/10/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func learningButton(_ sender: Any)
    {let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "LearningModuleSelectorViewController") as! LearningModuleSelectorViewController
        self.present(myVC, animated: true, completion: nil)
        
    }
    
    @IBAction func quizButton(_ sender: Any)
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        self.present(myVC, animated: true, completion: nil)
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
