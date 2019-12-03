//
//  QuizViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 4/26/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet weak var questionTextField: UITextView!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var questions = [
        "What is the meaning of iOS?",
        "Which file specifies the layout of your screen?",
        "What is the application's current state when the application is in background and not executing any code?",
        "What is the application's current state when the application is in background and executing background tasks?",
        "Which feature of iPhone is activated when user rotates device from portrait to landscape mode?",
        "Which of the following is NOT a state in the cycle of a service?",
        "When an activity does not exist in the memory, it is in?",
        "What is the application's current state when the application has not been launched or was running but terminated by the device?",
        "Which of the following framework is not used in iOS?",
        "Which of the following is a default UI property?"
    ]
    
    
    let answers = [
        ["iPhone Operating System","Internetwork Operating System", "Internet Operating System"],
        ["Layout File", "Manifest File", "String XML"],
        ["Suspended State","Background State","Inactive State"],
        ["Background State", "Inactive State", "Suspended State"],
        ["Accelerometer", "Rotator", "Shadow Detector"],
        ["Paused", "Destroyed", "Starting"],
        ["Starting State", "Inexistent State", "Loading State"],
        ["Not Running State", "Inactive State", "Suspended State"],
        ["AppKit", "UIKit", "CoreMotion"],
        ["Atomic", "assign", "non-atomic"]
    ]
    var questionDict = Dictionary<String,Array<String>>()
    var answersDict = Dictionary<String, Array<Array<String>>>()
    
    var rightAnswer = 0
    var wrongAnswer = 0
    var currentQuestion = 0
    var rightAnswerPlacement: UInt32 = 0
    
    
    override func viewDidLoad() {
        progressView.setProgress(0.1, animated: false)
        super.viewDidLoad()
        questionDict["module1"] = questions
        answersDict["module1"] = answers
        nextButton.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    func newQuestion() {
        progressView.setProgress(Float(currentQuestion+1) / Float(questions.count), animated: true)
        if currentQuestion+1 == questions.count {
            nextButton.setTitle("Finish", for: .normal)
        }
        
        option1Button.isEnabled = true
        option2Button.isEnabled = true
        option3Button.isEnabled = true
        nextButton.isHidden = true
        questionTextField.text = questions[currentQuestion]
        
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        var button: UIButton = UIButton()
        var x = 1
        for i in 1...3 {
            button = view.viewWithTag(i) as! UIButton
            button.backgroundColor = UIColor.darkGray
            if(i == Int(rightAnswerPlacement)) {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            } else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = x+1
            }
        }
        currentQuestion = currentQuestion + 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func optionButtons(_ sender: UIButton) {
        var button: UIButton = UIButton()
        let userSelection:Int = sender.tag
        
        if(sender.tag == Int(rightAnswerPlacement)) {
            rightAnswer = rightAnswer + 1
            nextButton.backgroundColor = #colorLiteral(red: 0.2249624133, green: 0.7392098308, blue: 0.343357861, alpha: 1)
            for i in 1...3 {
                button = view.viewWithTag(i) as! UIButton
                if i == Int(rightAnswerPlacement) {
                    sender.pulseButton()
                    button.backgroundColor = #colorLiteral(red: 0.2249624133, green: 0.7392098308, blue: 0.343357861, alpha: 1)
                } else {
                    button.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
                }
            }
            option1Button.isEnabled = false
            option2Button.isEnabled = false
            option3Button.isEnabled = false
            nextButton.isHidden = false
        }
        else {
            wrongAnswer = wrongAnswer + 1
            nextButton.backgroundColor = #colorLiteral(red: 0.8470588235, green: 0.2745098039, blue: 0.1490196078, alpha: 1)
            for i in 1...3 {
                button = view.viewWithTag(i) as! UIButton
                if i == Int(rightAnswerPlacement) {
                    button.backgroundColor = #colorLiteral(red: 0.2249624133, green: 0.7392098308, blue: 0.343357861, alpha: 1)
                } else if i == userSelection {
                    sender.shakeButton()
                    button.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
                } else {
                    button.backgroundColor = UIColor.darkGray.withAlphaComponent(0.2)
                }
            }
            option1Button.isEnabled = false
            option2Button.isEnabled = false
            option3Button.isEnabled = false
            nextButton.isHidden = false
        }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if currentQuestion != questions.count {
            newQuestion()
        }
        if rightAnswer + wrongAnswer == 10 && nextButton.currentTitle == "Finish" {
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: "ChartsViewController") as! ChartsViewController
            myVC.passedRightAnswerValue = rightAnswer
            myVC.passedWrongAnswervalue = wrongAnswer
            self.present(myVC, animated: true, completion: nil)
        }
    }
}
