//
//  ViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 4/23/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var questionTextField: UITextView!
    @IBOutlet weak var answerTextField: UITextView!
    @IBOutlet weak var mehButton: UIButton!
    @IBOutlet weak var gotchaButton: UIButton!
    @IBOutlet weak var questionTracker: UILabel!
    
    
    
    var currentQuestion = 1
    
    let questions =
        [            "What is a Memory Leak?",
                     "What is auto-layout?",
                     "What is GCD?",
                     "What is MVC?",
                     "What is CoreData?",
                     "What is the purpose of reuseIdentifier?",
                     "What is Synchronous vs. Asynchronous in GCD?",
                     "Why do you generally create a weak reference when using self in a block?",
                     "Difference between frame and bounds?",
                     "How many UITableViewCells are allocated when you first load a UITableView? How many additional ones are allocated as you scroll through the table?"
        ]
    
    let answers =
        [
                    "A memory leak is a type of resource leak that occurs when a computer program incorrectly manages memory allocations  in such a way that memory which is no longer needed is not released. In object-oriented programming, a memory leak may happen when an object is stored in memory but cannot be accessed by the running code.",
                   
                    "Auto Layout dynamically calculates the size and position of all the views in your view hierarchy, based on constraints placed on those views.",
                   
                    "GCD is the most commonly used API to manage concurrent code and execute operations asynchronously at the Unix level of the system. GCD provides and manages queues of tasks.",
                   
                    "MVC is a design pattern that stands for model view controller, this design pattern separates the data from its display, mediated by a View Controller.",
                   
                    "Core Data is not an ORM or object-relational mapper. Nor is it a database. Instead, Core Data is an object graph manager which also has the ability to persist object graphs to a persistent store, on a disk.",
                   
                    "Reusability of an already allocated object.",
                    
                    "These terms describe when a function will return control to the caller, and how much work will have been done by that point.",
                    
                    "To avoid retain cycles and memory leaks.",
                    
                    "The frame relates a view’s location and size in its parent View. The bounds relate a view’s location and size using its own coordinate system.",
                    
                    "A UITableView will normally allocate just enough UITableViewCell objects to display the content visible in the table. Because of the reuseIdentifier, the UITableView will not allocate new UITableViewCell objects for each new item that scrolls into view, avoiding laggy animations.",
        
    ]
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        questionTextField.textColor = UIColor.white
//        showAnswer.isHidden = false
//        answerTextField.alpha = 0.03
        questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(questions.count)
        nextQuestion()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func gotchaButton(_ sender: UIButton)
    {
//        showAnswer.isHidden = false
//        answerTextField.alpha = 0.03
        
        currentQuestion = currentQuestion + 1
        
        
        
        if(currentQuestion <= questions.count)
        {
            print("Current index", currentQuestion)
            print("Questions Count", questions.count)
            print("Hello from if")
            questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(questions.count)
            nextQuestion()
        }
        else
        {
            print("Current index", currentQuestion)
            print("Questions Count", questions.count)
            print("Hello from else")
            currentQuestion = 1
            questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(questions.count)
            nextQuestion()
        }
        
    }
    
    @IBAction func mehButton(_ sender: UIButton)
    {
//        showAnswer.isHidden = false
//        answerTextField.alpha = 0.03
        
        currentQuestion = currentQuestion + 1
        
        if(currentQuestion <= questions.count)
        {
            print("Current index", currentQuestion)
            print("Questions Count", questions.count)
            print("Hello from if")
            questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(questions.count)
            nextQuestion()
        }
        else
        {
            print("Current index", currentQuestion)
            print("Questions Count", questions.count)
            print("Hello from else")
            currentQuestion = 1
            questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(questions.count)
            nextQuestion()
        }
        
    }
    
    
    func nextQuestion()
    {
        questionTextField.text = questions[currentQuestion-1]
        answerTextField.text = answers[currentQuestion-1]
    }
    
    
    
}

