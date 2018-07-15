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
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var passedQuestionModule = ""
    var passedAnswerModule = ""
    var currentQuestion = 1
    
    let question1 =
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
    
    let answer1 =
        [
            "A memory leak is a type of resource leak that occurs when a computer program incorrectly manages memory allocations  in such a way that memory which is no longer needed is not released. In object-oriented programming, a memory leak may happen when an object is stored in memory but cannot be accessed by the running code.",
            
            "Auto Layout dynamically calculates the size and position of all the views in your view hierarchy, based on constraints placed on those views.",
            
            "GCD is the most commonly used API to manage concurrent code and execute operations asynchronously at the Unix level of the system. GCD provides and manages queues of tasks.",
            
            "MVC is a design pattern that stands for model view controller, this design pattern separates the data from its display, mediated by a View Controller.",
            
            "Core Data is not an ORM or object-relational mapper. Nor is it a database. Instead, Core Data is an object graph manager which also has the ability to persist object graphs to a persistent store, on a disk. It is a framework that allows to persist data without actually using a database. This framework is similar to using a relational databases from SQLite.",
            
            "Reusability of an already allocated object.",
            
            "These terms describe when a function will return control to the caller, and how much work will have been done by that point.",
            
            "To avoid retain cycles and memory leaks.",
            
            "The frame relates a view’s location and size in its parent View. The bounds relate a view’s location and size using its own coordinate system.",
            
            "A UITableView will normally allocate just enough UITableViewCell objects to display the content visible in the table. Because of the reuseIdentifier, the UITableView will not allocate new UITableViewCell objects for each new item that scrolls into view, avoiding laggy animations.",
            ]
    
    
    
    let question2 =
    [
        "What is the difference bwtween atomic and non-atomic property",
        "What is the difference between strong, weak, and unowned reference",
        "Explain data Structures",
        "What is URLSession?",
        "What is the difference between WKWebView and UIWebView",
        "What is OAuth?",
        "What is Offset?",
        "Explain @objc inference",
        "What is Safe Area?",
        "What is Viper Architecture"
    ]
    
    let answer2 =
    [
        "in iOS atomic and non atomic refers to the property from a thread safety point of view. When we say that a property is atomic that means that it is thread safe , when we say it is non-atomic that means that it is not thread safe.",
        
        "Both weak and unowned references do not create a strong hold on the referred object (a.k.a. they don't increase the retain count in order to prevent ARC from deallocating the referred object)."
        ,
        "Arrays, Sets, Tuples, and Dictionaries are all collections of data structures that store data in one place.",
        
        "When we want to retrieve contents from certain URL,we choose to use URLConnection. There are three types of tasks: Data tasks, Download tasks, and Upload Tasks",
        
        "WKWebView has own cookie storage and its not share by the whole app and all other web views like in the case of (UIWebView).",
        
        "OAuth short for Open Authorization, is an authorization protocol and not one used for authentication. OAuth being an authorization protocol, isn’t concerned with identifying the user. Instead it deals with the authorization of a third party application to access user data without exposing the user’s credentials. There are two libraries: OAuthSwift & OAuth2",
        
        "If we want to arrange the button at Bottom-Right of superview with spacing 20 Pts, we use view attribute of UIButton or UILabel for reference to view attribute of superview and use .offset(x) for set padding.",
        
        "We can tag a Swift declaration with @objc to indicate that it should be available to Objective-C. In Swift 3 many declarations were automatically inferred to be made available to Objective-C. The most common place for this is any Swift method we want to refer to using a selector.",
        
        "Safe area allows us to create constraints to keep our content from being hidden by UIKit bars like the status, navigation or tab bar. Previously we used topLayoutGuide and bottomLayoutGuide.",
        
        "Viper is an another design patters. It has five layers: View, Interactor, Presenter, Entity, and Router. It is based on Single Responsibility Principle."
    ]
    
    let question3 =
    [
        "What is thread safety?",
        "What is Automatice Reference Counting (ARC)?",
        "How is an “Unowned reference” different from a “Weak Reference”?",
        "Explain Queues",
        "Explain @objcMembers inference",
        "Difference between Array vs NSArray ?",
        "What is the mutating keyword ?",
        "What is snapshot testing ?",
        "What is the difference Stack and Heap ?",
        "Explain UIBezierPath"
    ]
    
    let answer3 =
    [
        "A piece of code is called thread safe if it gives correct results even in a multi threaded environment i.e. if it is executed simultaneously by multiple threads it would give correct result. Thread safety means that the code can handle multiple threads.",
        
        "Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage. ARC automatically frees up the memory used by class instances when those instances are no longer needed.",
        
        "The difference between a weak reference and an unowned reference is that the instance which a weak reference refers to can be nil, whereas the instance that an unowned reference is referring to cannot be nil. This means that when we use a weak reference, the property must be an optional property, since it can be nil.",
        
        "Queues are used to store a set of data, but are different in that the first item to go into this collection, will be the first item to be removed. Also well known as FIFO which means, ‘first in first out’.",
        
        "When we declare this class as having @objcMembers everything in the class will be exposed to the Objective-C runtime. This is the same as writing implicitly @objc in front of the function.",
        
        "Array can only hold one type of data, NSArray can hold different types of data. The array is value type, NSArray is immutable reference type.",
        
        "The mutating keyword is used to let variables be modified in a struct or enum.",
        
        "Snapshot testing is a way to automatically test the aesthetic part of your UI. It consists of creating a view from your app and comparing it against a reference image.",
        
        "Stack is used and automatically removes itself from memory after work is finished. But in Heap the user could do it by writing manual code for deleting from memory. Stack; Stack is easy to use. It’s kept in RAM on the computer. Created variables are automatically deleted when they exit the stack. It is quite fast compared to Heap. Constructed variables can be used without a pointer. Heap; Compared to Stack, it is quite slow. It creates memory problems if not used correctly. Variables are used with pointers. It is created at runtime.",
        
        "UIBezierPath class allows us define custom paths that describe any shape, and use those paths to achieve any custom result we want."
    ]
    
    let question4 =
    [
        "assign property",
        "reatain property",
        "copy property",
        "Explain what is the protocol in Objective C?",
        "Explain class definition in Objective-C?",
        "Mention what is the use of category in Objective-C?",
        "Explain NSArray",
        "Explain NSMutableArray",
        "Explain what is @synthesized in Objective-C?",
        "Explain what are objective- C blocks?"
    ]
    
    let answer4 =
    [
        "the incoming value will be assigned to the property. Use this for plain datatypes (e.g. int, double).",
        "the incoming value will be retained. If the value is an Objective-C object this is the most common.",
        "the incoming value will be copied. This is used if there is a chance that the incoming object may change (e.g. NSMutableString).",
        "In Objetive-C, a protocol is a language feature, that provides multiple inheritances in a single inheritance language.  Objective C supports two types of protocol. Ad hoc protocols known as informal protocol and Compiler protocols known as a formal protocol",
        "A class definition begins with the keyword @interface followed by the interface (class) name, and the class body, closed by a pair of curly braces.  In Objective-C, all classed are retrieved from the base class called NSObject. It gives basic methods like memory allocation and initialization.",
        "The use of category in Objective-C is to extend an existing class by appending behavior that is useful only in certain situations. In order to add such extension to existing classes, objective –C provides extensions and categories. The syntax used to define a category is @interface keyword.",
        "NSArray: You will use an NS array when data in the array don’t change. For example, the company name you will put in NS Array so that no one can manipulate it.",
        "NSMutableArray: This array will be used in an array, when data in an array will change. For instance, if you are passing an array to function and that function will append some elements in that array then you will choose NSMutable Array.",
        "Once you have declared the property in objective-C, you have to tell the compiler instantly by using synthesize directive.  This will tell the compiler to generate a getter&setter message.",
        "In Objective-C class, there is an object that combines data with related behavior.  It enables you to form distinct segments of code that can be passed around to functions or methods as if they were values.  Objective-C blocks can be added to collections like NSDictionary or NSArray."
    ]
    
    let question5 =
    [
        "What is NSUserDefaults?",
        "what is Singleton Pattern?"
    ]
    
    let answer5 =
        [
    "It is the easiest way to store data without a database using key-value pair. This approach is the ideal way to store small amounts of data. In most cases, NSUserDefaults is best used to save user’s settings and data that is not critical. The following types are supported by NSUserDefaults: NSString, NSNumber, NSDate, NSDictionary, NSData",
    "The singleton pattern guarantees that only one instance of a class is instantiated. ",
    ""
    ]
    
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        progressView.setProgress(0.1, animated: false)
        print(passedQuestionModule, passedAnswerModule)
        questionTextField.textColor = UIColor.white
//        showAnswer.isHidden = false
//        answerTextField.alpha = 0.03
       // questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(question1.count)
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
        progressView.setProgress(Float(currentQuestion) / Float(question1.count), animated: true)
        if(currentQuestion <= question1.count)
        {
            print("Current index", currentQuestion)
            print("Questions Count", question1.count)
           // questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(question1.count)
            
            nextQuestion()
        }
        else
        {
            progressView.setProgress(0.1, animated: false)
            print("Current index", currentQuestion)
            print("Questions Count", question1.count)
            currentQuestion = 1
         //   questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(question1.count)
            nextQuestion()
        }
        
    }
    
    @IBAction func mehButton(_ sender: UIButton)
    {
//        showAnswer.isHidden = false
//        answerTextField.alpha = 0.03
        
        currentQuestion = currentQuestion + 1
        progressView.setProgress(Float(currentQuestion) / Float(question1.count), animated: true)
        if(currentQuestion <= question1.count)
        {
            print("Current index", currentQuestion)
            print("Questions Count", question1.count)
            print("Hello from if")
         //   questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(question1.count)
            nextQuestion()
        }
        else
        {
             progressView.setProgress(0.1, animated: false)
            print("Current index", currentQuestion)
            print("Questions Count", question1.count)
            print("Hello from else")
            currentQuestion = 1
          //  questionTracker.text = "Question: " + String(currentQuestion) + "/" + String(question1.count)
            nextQuestion()
        }
        
    }
    
    
    func nextQuestion()
    {
        if(passedQuestionModule == "question1")
        {
            questionTextField.text = question1[currentQuestion-1]
            answerTextField.text = answer1[currentQuestion-1]
        }
        else if(passedQuestionModule == "question2")
        {
            questionTextField.text = question2[currentQuestion-1]
            answerTextField.text = answer2[currentQuestion-1]
        }
        else if(passedQuestionModule == "question3")
        {
            questionTextField.text = question3[currentQuestion-1]
            answerTextField.text = answer3[currentQuestion-1]
        }
        else if(passedQuestionModule == "question4")
        {
            questionTextField.text = question4[currentQuestion-1]
            answerTextField.text = answer4[currentQuestion-1]
        }
        
    }
    
    
    
}

