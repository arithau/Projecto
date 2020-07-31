//
//  QuizQuestionsViewController.swift
//  Projecto
//
//  Created by Valentina Mallari Santiago on 7/31/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class QuizQuestionsViewController: UIViewController {
   
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var stackViewOne: UIStackView!
    @IBOutlet weak var aButtonOne: UIButton!
    @IBOutlet weak var bButtonOne: UIButton!
    @IBOutlet weak var cButtonOne: UIButton!
    
    @IBOutlet weak var stackViewTwo: UIStackView!
    @IBOutlet weak var aButtonTwo: UIButton!
    @IBOutlet weak var bButtonTwo: UIButton!
    @IBOutlet weak var cButtonTwo: UIButton!
    
    @IBOutlet weak var stackViewThree: UIStackView!
    @IBOutlet weak var aButtonThree: UIButton!
    @IBOutlet weak var bButtonThree: UIButton!
    @IBOutlet weak var cButtonThree: UIButton!
    

    var questions: [Question] = [
        Question(text: "What is your budget?", type: .money,
                 answers: [
                    Answer(text: "$", value: 1),
                    Answer(text: "$$", value: 2),
                    Answer(text: "$$$", value: 3),
        ]),
        Question(text: "How would you describe your style?", type: .aesthetic,
                 answers: [
                    Answer(text: "Casual", value: 1),
                    Answer(text: "Chic", value: 2),
                    Answer(text: "Soft", value: 3),
        ]),
        Question(text: "What kind of clothing are you looking for?", type: .looking,
                 answers: [
                    Answer(text: "Business attire", value: 1),
                    Answer(text: "Essentials", value: 2),
                    Answer(text: "Party pieces!", value: 3),
        ]),
    ]
    
var questionIndex = 0
    
    var answersChosen : [Answer] = []
    
    var dataOne: [BrandInfo] = []
    var dataTwo: [BrandInfo] = []
    var dataThree: [BrandInfo] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        
        stackViewOne.isHidden = true
        stackViewTwo.isHidden = true
        stackViewThree.isHidden = true
        
         navigationItem.title = "Question #\(questionIndex+1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        questionLabel.text = currentQuestion.text
        
        switch currentQuestion.type {
        case .money:
            updateStackOne(using: currentAnswers)
        case .aesthetic :
            updateStackTwo(using: currentAnswers)
        case .looking :
            updateStackThree(using: currentAnswers)
        }
    }
    
    func updateStackOne(using answers: [Answer]) {
        stackViewOne.isHidden = false
        aButtonOne.setTitle(answers[0].text, for : .normal)
        bButtonOne.setTitle(answers[1].text, for : .normal)
        cButtonOne.setTitle(answers[2].text, for : .normal)
    }
    
    func updateStackTwo(using answers: [Answer]) {
           stackViewTwo.isHidden = false
            aButtonTwo.setTitle(answers[0].text, for : .normal)
            bButtonTwo.setTitle(answers[1].text, for : .normal)
            cButtonTwo.setTitle(answers[2].text, for : .normal)
       }
       
    func updateStackThree(using answers: [Answer]) {
           stackViewThree.isHidden = false
            aButtonThree.setTitle(answers[0].text, for : .normal)
            bButtonThree.setTitle(answers[1].text, for : .normal)
            cButtonThree.setTitle(answers[2].text, for : .normal)
       }

    @IBAction func questionOnePressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case aButtonOne:
        answersChosen.append(currentAnswers[0])
        for brand in betterBrand {
            if brand.budget == 1 {
                dataOne.append(brand)
                }
            }
        case bButtonOne:
        answersChosen.append(currentAnswers[1])
            for brand in betterBrand {
                if brand.budget == 2 {
                    dataOne.append(brand)
                }
            }
        case cButtonOne:
        answersChosen.append(currentAnswers[2])
            for brand in betterBrand {
                if brand.budget == 3 {
                    dataOne.append(brand)
                }
            }
        default:
            break
        }
        nextQuestion()
    }
    
    @IBAction func questionTwoPressed(_ sender: UIButton) {
         let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case aButtonTwo:
        answersChosen.append(currentAnswers[0])
            for brand in betterBrand {
                       if brand.fashion == 1 {
                           dataTwo.append(brand)
                           }
                       }
        case bButtonTwo:
        answersChosen.append(currentAnswers[1])
            for brand in betterBrand {
                if brand.fashion == 2 {
                    dataTwo.append(brand)
                        }
                    }
        case cButtonTwo:
        answersChosen.append(currentAnswers[2])
            for brand in betterBrand {
                if brand.fashion == 3 {
                    dataTwo.append(brand)
                        }
                    }
        default:
            break
        }
        nextQuestion()
    }
    
    @IBAction func questionThreePressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case aButtonThree:
        answersChosen.append(currentAnswers[0])
            for brand in betterBrand {
                           if brand.searching == 1 {
                               dataThree.append(brand)
                                   }
                               }
        case bButtonThree:
        answersChosen.append(currentAnswers[1])
            for brand in betterBrand {
                if brand.searching == 2 {
                    dataThree.append(brand)
                    }
                }
        case cButtonThree:
        answersChosen.append(currentAnswers[2])
            for brand in betterBrand {
            if brand.searching == 3 {
                dataThree.append(brand)
                    }
                }
        default:
            break
        }
        nextQuestion()
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI( )
        } else {
             performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let quizResultViewController = segue.destination as! QuizResultViewController
            quizResultViewController.responses = answersChosen
            quizResultViewController.userBudget = dataOne
            quizResultViewController.userStyle = dataTwo
            quizResultViewController.userWant = dataThree
        }
    }
 
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
