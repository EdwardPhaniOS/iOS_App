//
//  QuestionBank.swift
//  Ruby
//
//  Created by Tan Vinh Phan on 10/1/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import Foundation

class QGame {
    var question: [String] = ["What’s the name of this city in the United States with a bell in the near middle of the city?", "What is the name of the spaceship first landed on the moon?", "What does 'umbros' mean in Latin? Translate it into Sentinelese.", "What’s the first photo printed from a camera in the world?", "When was the first email ever sent in the world?", "… and what was that email about?"]
    var questionImageName: [String] = ["1", "2", "3", "4", "5", "6"]
    var currentQuestionIndex: Int = 0
    var point: Int = 0
    
    func getNextQuestion() -> String {
        if self.currentQuestionIndex == (question.count - 1) {
            currentQuestionIndex = 0
        } else {
            currentQuestionIndex += 1
        }

        return self.question[currentQuestionIndex]
    }
    
    func getNextImageQuestion() -> String {
        print("\(currentQuestionIndex)")
        return self.questionImageName[currentQuestionIndex]
    }
}

