//
//  GameViewController.swift
//  Ruby
//
//  Created by Tan Vinh Phan on 10/1/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class GameViewController: UIViewController
{
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    var game: QGame = QGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointLabel.text = "--"
        let starterImage = UIImage(named: "2")
        questionImageView.image = starterImage
        questionLabel.text = "Tap the true button to start the game"
        //disable the false button when the game just start
        falseButton.isEnabled = false
        
    }
    @IBAction func trueButtonDidTap(_ sender: Any) {
        if pointLabel.text == "--" {
            //when the game just start and user click the true button
            game.point = 0
            falseButton.isEnabled = true
        } else {
            game.point += 1 }
        updateGame()
    }
    @IBAction func falseButtonDidTap(_ sender: Any) {
        game.point -= 1
        updateGame()
    }
    
    func updateGame() {
        let nextQuestion = game.getNextQuestion()
        let questionImage = game.getNextImageQuestion()
        let image = UIImage(named: questionImage)
        
        questionImageView.image = image
        questionLabel.text = nextQuestion
        pointLabel.text = "\(game.point)"
    }
}
