//
//  ViewController.swift
//  Quiz
//
//  Created by Troy Abel on 10/20/14.
//  Copyright (c) 2014 Troy Abel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //define the connections between the view controller and the code
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerButton: UIButton!
    
    let questions = ["From what is cognac made?", "What is 7+7", "What is the capital of Vermont?"]
    let answers = ["Grapes", "14", "Montpelier"]
    var currentQuestionIndex = 0

    @IBAction func showQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        answerButton.enabled = true
    }

    @IBAction func showAnswer(sender: AnyObject) {
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            showQuestion(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

