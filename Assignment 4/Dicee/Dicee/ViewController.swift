//
//  ViewController.swift
//  Dicee
//
//  Created by Apple on 06.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1: UIImageView!
    
    @IBOutlet weak var dice2: UIImageView!
    
    let images = ["dice-1", "dice-2", "dice-3", "dice-4", "dice-5", "dice-6"]
    
    
    @IBAction func RollDice(_ sender: Any) {
        roller()
    }
    
    
    func roller() -> Void{
        var ind1 = Int(arc4random_uniform(6))
        var ind2 = Int(arc4random_uniform(6))
        if ind1 == ind2{
            ind2 = 1;
        }
//        print(ind1)
//        print(ind2)
        dice1.image=UIImage(named: images[ind1])
        dice2.image=UIImage(named: images[ind2])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

