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
    var passedCount = ""
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
        "What is Viper Architecture",
        "What is the difference between a class and an object?",
        "What is JSON?",
        "What is non-running state?",
        "What is an inactive state?",
        "What is an active state?",
        "What is Background state?",
        "what is suspended state?",
        "Is it faster to iterate through an NSArray or an NSSet?",
        "What is KVO?"
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
        
        "Viper is an another design patters. It has five layers: View, Interactor, Presenter, Entity, and Router. It is based on Single Responsibility Principle.",
        
        "In the simplest sense, a class is a blueprint for an object. It describes the properties and behaviors common to any particular type of object. An object, on the other hand, is an instance of a class.",
        
        "JSON stands for JavaScript Object Notation. It is a file format that uses human-readable text to transmite data objects consisting of attribute-value pairs and array data types.",
        
        "Not-running state occurs when the app either has not be launched or was running but was terminated by the system.",
        
        "Inactive state occurs where the app runs in the foreground but is currently not receiving events. (It may be executing other code though). This state is typically brief as apps transitions to other states.",
        
        "Active state is where the app is running in the foreground and receiving events. This is the normal mode for foreground apps.",
        
        "Background state occurs when the app is in the background and executing code. Apps typically enter this state on their way to being suspended. Apps that require extra execution time may remain in this screen longer. Apps being launched directly into the background enters this state instead of inactive state.",
        
        "Suspended state is where the app is in the background but it is not executing code. Apps will remain in memory, but are removed by the system if low-memory condition occurs in order to make more space for foreground apps.",
        
        "It depends. NSSet is faster to iterate through if the order of the items in the collection is not important. The reason is because NSSet uses hash values in order to find items while NSArray has to iterate through its entire contents to find a particular object.",
        
        "KVO stands for Key-Value Observing. It allows a controller or class to observe when a property value changes."
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
        "Explain what are objective- C blocks?",
        "What is dynamic in Objective-C?",
        "What is the difference between _ vs self. in Objective-C?",
        "What are blocks in Objective-C?"
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
        "In Objective-C class, there is an object that combines data with related behavior.  It enables you to form distinct segments of code that can be passed around to functions or methods as if they were values.  Objective-C blocks can be added to collections like NSDictionary or NSArray.",
        "Dynamic is used for subclasses of NSManagedObject. @dynamic can also be used to delegate the responsibility of implementing the accessors. ",
        "You typically use either when accessing a property in Objective-C. When you use _, you're referencing the actual instance variable directly. You should avoid this. Instead, you should use self. to ensure that any getter/setter actions are honored. In the case that you would write your own setter method, using _ would not call that setter method. Using self. on the property, however, would call the setter method you implemented.",
        "Blocks are a language-level feature of Objective (C and C++ too). They are objects that allow you to create distinct segments of code that can be passed around to methods or functions as if they were values. This means that a block is capable of being added to collections such as NSArray or NSDictionary. Blocks are also able to take arguments and return values similar to methods and functions. The syntax to define a block literal uses the caret symbol(^)"
    ]
    
    let designPatternQuestion =
    [
        "What is NSUserDefaults?",
        "what is Singleton Pattern?",
        "What is MVC?",
        "What is MVVM?",
        "What is the delegation pattern?"
    ]
    
    let designPatternAnswer =
        [
    "It is the easiest way to store data without a database using key-value pair. This approach is the ideal way to store small amounts of data. In most cases, NSUserDefaults is best used to save user’s settings and data that is not critical. The following types are supported by NSUserDefaults: NSString, NSNumber, NSDate, NSDictionary, NSData",
    
    "The singleton pattern guarantees that only one instance of a class is instantiated and that there’s a global access point to that instance.",
    
    "MVC stands for Model-View-Controller. It is a software architecture pattern for implementing user interfaces. MVC consists of three layers: the model, the view, and the controller. The model layer is typically where the data resides (persistence, model objects, etc). The view layer is typically where all the UI interface lies. Things like displaying buttons and numbers belong in the view layer. The view layer does not know anything about the model layer and vice versa. The controller (view controller) is the layer that integrates the view layer and the model layer together.",
    
    "MVVM stands for Model-View-ViewModel. It is a software architecture pattern for implementing user interfaces. MVVM is an augmented version of MVC where the presentation logic is moved out of the controller and into the view model. The view model is responsible for handling most, if not all, of the view's display logic. A common occurence in MVC is where you have a massive-view-controller (some joke this is what MVC stands for). In order to shrink the size of your view controller and make the logic and readibility of your code easier to follow along, the MVVM will be used.",
    
    "The delegation pattern is a powerful pattern used in building iOS applications. The basic idea is that one object will act on another object's behalf or in coordination with another object. The delegating object typically keeps a reference to the other object (delegate) and sends a message to it at the appropriate time. It is important to note that they have a one to one relationship."
    ]
    
    let memoryManagementQuestion =
    [
        "Why do you generally create a weak reference when using self in a block?",
        "What is memory management handled on iOS?",
        "What is a retain cycle?",
        "What is the difference between copy and retain?",
        "What is the difference between a stack vs a heap?"
    ]
    
    
    let memoryManagementAnswer =
    [
    "Sometimes it is necessary it capture self in a block such as when defining a callback block. However, since blocks maintain strong references to any captured objects including self, this may lead to a strong reference cycle and memory leak. Instead, capturing a weak reference to self is recommended in order to avoid this issue:",
    
    "iOS uses something called ARC which stands for Automatic Reference Counting. When an object is said to have a strong reference to it, ARC increase its retain count by 1. When the retain count of an object reaches 0, the object will typically be deallocated if there are no more strong references to it. Unlike garbage collection, ARC does not handle reference cycles automatically.",
    
    "Retain cycles can occur when memory management is based on retain count. This typically occurs when two objects strongly reference each other. As a result, the retain count of either object will never reach zero and deallocated from memory (hence retaining each other).",
    
    "Calling retain on an object will increase its retain count by one. When the retain count of an objective reaches 0, the object will be deallocated and released from memory. When you retain an object, you share the same version with whoever passed the object to you. But when you copy an object, you do not share the same version of the object that was passed to you. Instead, a duplicate of that object is created with duplicated values.",
    
    "A stack is a region of memory where data is added or removed in a last-in-first-out (LIFO) order. According to Ates Goral, it is the memory set aside as scratch space for a thread of execution. Meanwhile the heap is memory set aside for dynamic allocation. Unlike the stack, you can allocate a block at any time and free it at anytime. Note: In Objective-C, all objects are always allocated on the heap, or at least should be treated as if on the heap."
    ]
    
    
    
    let SwiftQuestion =
        [
            "What is the difference between public and open? Why is it important to have both?",
            "What is the difference between var and let?",
            "What is the difference between a struct and a class?",
            "What is the difference between implicit and explicit?"
    ]
    
    let SwiftAnswer =
        [
    "Open access imposes limitations on class inheritance. Classes declared with open level access can be subclassed by modules they are defined in, modules that import the module in which the class is defined, and class members as well. While this sounds similar to the public access level defined in Swift 2, there is a small difference. In Swift 3, the meaning of public access level means that classes declared public can only be subclassed in the module they are defined in. This includes public class members which can be overridden by subclasses defined int he module they are defined in. Some classes of libraries and frameworks are not designed to be subclasses. For example, in the Core Data framework, Apple states that some methods of NSManagedObject should not be overridden. To prevent any unexpected behavior that may result from overriding those methods, Apple declares those methods public rather than open. As a result, those methods are not marked as open for developers to override.",
    
    "var is a variable that can be changed while let denotes a constant that cannot be changed once set.",
    
    "The main difference to note is that structs are value types (stored on stack) while classes are reference types (stored on heap). Classes have capabilities that structs do not: Inheritance enables one class to inherit the characteristics of another. Type casting enables you to check and interpret the type of a class instance at runtime. Deinitializers enable an instance of a class to free up any resources it has assigned. Reference counting allows more than one reference to a class instance.",
    
    "When referring to something as implicit or explicit, it is often referring to how an object is declared. In the two examples below: var name: String = onthecodepath // explicit var name = onthecodepath // implicit. In the first line above, the name variable is explicitly declared since the type of the variable follows the name of the variable. In the second line, the String type is not explicitly declared. However, Swift is able to infer that name is of a String type since the value that it is being set as is of a String type."
    ]
    
    let threadManagementQuestion =
    [
        "What is the difference between synchronous and asynchronous task?",
        "What is the difference between atomic and non-atomic synthesized properties?",
        "What is GCD and how is it used?",
        "Explain the difference between Serial vs Concurrent"
    ]
    
    let threadManagementAnswer =
    [
        "Synchronous tasks wait until the task has been completed while asynchronous tasks can run in the background and send a notification when the task is complete.",
        
        "First, properties are set to atomic by default. Atomic properties are more likely to guarentee thread-safety because it will ensure that a value is fully set (by the setter method) or fully retrieved (by the getter method) when accessor methods are called simultaneously. Non-atomic properties, howeer are not thread-safe. While they run faster, they may cause race conditions. In the event that accessor methods are called simultaneously and a race condition occurs, a setter value would first release the old value and a getter method would retrieve nil since no value has not been set yet.",
        
        "GCD stands for Grand Central Dispatch. It improves the app responsiveness by helping to defer computationally expensive tasks and run them in the background. It Provides an easier concurrency model than locks and threads and helps to avoid concurrency bugs. It Potentially optimize your code with higher performance primitives for common patterns such as singletons. In other words, GCD provides and manages queues of tasks in the iOS app. This is one of the most commonly used API to manage concurrent code and execute operations asynchronously. Network calls are often performed on a background thread while things like UI updates are executed on the main thread.",
        
        "Tasks executed serially are executed one at a time while tasks that are executed concurrently may be executed at the same time."
    ]
    
    
    let testingQuestion =
    [
        "What is the purpose of unit/UI testing? What are the benefits?"
    ]
    
    let testingAnswer =
    [
        "Unit/UI testing are the basic of test-driven development. This development approach allows you to codify requirements for your code before you implement it. Unit tests are important to make sure that code meets its design and requirements and behaves as expected. Parts of the program are segregated and tested to ensure that individual parts are working correctly."
    ]
    
    let storyboardQuestion =
    [
        "What is autolayout?",
        "What is the reuseIdentifier for?",
        "What is the difference between frame and bound of a UIView?",
        "What is the difference between viewDidLoad and viewDidAppear? Which should you use to load data from a remote server to display in the view?"
    ]
    
    let storyboardAnswer =
        [
            "Auto Layout is used to dynamically calculate the size and position of views based on constraints.",
            
            "The reuseIdentifier indicates that cells for a UITableView (or UICollectionView) can be reused. UITableView maintains an internal cache of UITableViewCell with the appropriate identifier and allows them to be reused when dequeueForCellWithReuseIdentifier is called. As a result, this increases performance of UITableView since a new view does not have to be created for a cell.",
            
            "The frame of a UIView is the region relative to the superview it is contained within while the bounds of a UIView is the region relative to its own coordinate system.",
            
            "viewDidLoad is only called when the view is loaded (after loadView is called). viewDidAppear, on the other hand, is called everytime the view appears on the device. If the data is static for the most part, it can be loaded in viewDidLoad and cached. But if the data is dynamic and likely to change often, it is preferrable to use viewDidAppear. In both instances, data should be loaded asynchronously on a background thread to avoid blocking the UI."
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

