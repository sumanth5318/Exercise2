//
//  ViewController.swift
//  exercise2
//
//  Created by Sai Sumanth Nissankara rao on 2022-10-13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var winner: UILabel!
    
    
    @IBOutlet weak var rolldice: UIButton!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    var cscore = 0
    var pscore = 0
    let maxscore = 30
    
    @IBAction func rolldice(_ sender: UIButton) {
        //img1.image = UIImage(named: "dice1")
        //img2.image = UIImage(named: "dice2")
        let no1 = Int.random(in: 1...6)
        let no2 = Int.random(in: 1...6)
        img1.image = UIImage(named: "dice\(no1)")
        img2.image = UIImage(named: "dice\(no2)")
        let score = abs(no1 - no2)
        if no1>no2 {
            cscore += score
            player1.text = "Score : \(cscore)"
            if cscore >= maxscore{
                winner.isHidden = false
                winner.text = "Winner : Computer"
            }
        }else if no2>no1 {
            pscore += score
            player2.text = "Score : \(pscore)"
            if pscore >= maxscore {
                winner.isHidden = false
                  winner.text = "Winner : Player"
              }
        }
    }
}

