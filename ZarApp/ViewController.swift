//
//  ViewController.swift
//  ZarApp
//
//  Created by Süleyman Arslan on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var right: UIImageView!
    
    @IBOutlet weak var left: UIImageView!
    
    let items = [UIImage(named: "dice1"),UIImage(named: "dice2"),UIImage(named: "dice3"),UIImage(named: "dice4"),UIImage(named: "dice5"),UIImage(named: "dice6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        
        text.isHidden = true
        
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        left.image = items[first]
        right.image = items[second]
        
        if (first == second){
            text.isHidden = false
            text.text = "KAZANDIN!!"
            
        }
            

    }
    
}

