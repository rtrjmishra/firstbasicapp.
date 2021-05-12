//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Rituraj Mishra on 16/04/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
struct  QuizBrain{
    let quiz = [ Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], ca: "Skin"),
                 Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], ca: "100"),
                 Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], ca: "Greenwich Mean Time"),
                 Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], ca: "Chapeau"),
                 Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], ca: "Watch"),
                 Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], ca: "Adiós"),
                 Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], ca: "Orange"),
                 Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], ca: "Rum"),
                 Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], ca: "Gorilla"),
                 Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], ca: "Australia")

    ]
    var qn = 0
    var score=0
    mutating func CheckAns(_ userAns: String) -> Bool
    {
        if userAns == quiz[qn].cora
        
        {
            score += 1
            return true
        }
        else
        {
             return false
        }
    }
    
    func getQuestionText() -> String
    {
        return quiz[qn].ques
    }
    
    func getProgress() -> Float
    {
        return Float(qn+1)/Float(quiz.count)
    }
    mutating func QuesNo()
    {
        if qn+1<quiz.count
        {
        qn += 1
            
        }
        else
        {
            qn = 0
            score = 0
        }
    }
    func getScoree() -> Int
    {
        return score
    }
    
    func UpdateOptions() -> Array<String>
    {
        return quiz[qn].ans
    }
    
}

