//
//  ViewController.swift
//  MyJanken
//
//  Created by 富木菜穂 on 2021/12/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        answerNumber = Int.random(in: 0..<3)
        switch answerNumber {
        case 0:
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
        case 1:
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        default:
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
    }
}

