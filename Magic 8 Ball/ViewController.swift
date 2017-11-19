//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mahmudur Rahman on 18/11/17.
//  Copyright © 2017 Janala's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageForChange: UIImageView!
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomImageLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAsk(_ sender: Any) {
        randomImageLoad()
    }
    
    func randomImageLoad() {
        let randomBallNumber = Int(arc4random_uniform(4))
        
        imageForChange.image = UIImage(named: ballArray[randomBallNumber])
    }
}
