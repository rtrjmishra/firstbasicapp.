//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rituraj Mishra on 15/04/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question
{
    let ques:String
    let ans:Array<String>
    let cora:String
    
    init(q:String,a:Array<String>,ca:String)
    {
        ques=q
        ans=a
        cora=ca
    }
}
