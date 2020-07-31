//
//  QuestionData.swift
//  Projecto
//
//  Created by Valentina Mallari Santiago on 7/31/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var type : QuestionType
    var answers : [Answer]
}

enum QuestionType {
    case money, aesthetic, looking
}

struct Answer {
    var text : String
    var value : Int
}

