//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Rituraj Mishra
// 
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionbar: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressED: UIProgressView!
    @IBOutlet weak var scoreChange: UILabel!
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var Option3: UIButton!
    
    
    var quizbrain = QuizBrain()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        UpdateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        let userAns = sender.currentTitle!
        let ugir = quizbrain.CheckAns(userAns)
        if  ugir
        {
            sender.backgroundColor = UIColor.green
        }
        else
        {
            sender.backgroundColor = UIColor.red
        }
        
        quizbrain.QuesNo()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self,selector: #selector(UpdateUI), userInfo: nil, repeats: false)
        
    }
    @objc func UpdateUI()
    {
        progressED.progress = quizbrain.getProgress()
        questionbar.text = quizbrain.getQuestionText()
        scoreChange.text = "Score: \(quizbrain.getScoree())"
        Option1.backgroundColor = UIColor.clear
        Option2.backgroundColor = UIColor.clear
        Option3.backgroundColor = UIColor.clear
        let anss:Array<String> = quizbrain.UpdateOptions()
        Option1.setTitle(anss[0], for: .normal)
        Option2.setTitle(anss[1], for: .normal)
        Option3.setTitle(anss[2], for: .normal)

    }
    
}

