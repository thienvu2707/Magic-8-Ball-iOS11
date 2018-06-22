//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Thien Vu Le on May/31/18.
//  Copyright © 2018 Thien Vu Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicImageView: UIImageView!
    
    var randomMagicBall : Int = 0
    
    let answerContainer = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeMagicBallAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        changeMagicBallAnswer()
        
    }
    
    func changeMagicBallAnswer() {
        randomMagicBall = Int(arc4random_uniform(5))
        
        magicImageView.image = UIImage(named: answerContainer[randomMagicBall])
        
        print(randomMagicBall)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeMagicBallAnswer()
    }
    
}

