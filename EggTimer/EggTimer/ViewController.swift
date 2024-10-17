//
//  ViewController.swift
//  EggTimer
//
//  Created by Apple on 17.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player: AVAudioPlayer!
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    let eggTimes = [1: 300, 2: 420, 3: 720]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func pressed(_ sender: UIButton) {
        timer.invalidate()
            progress.progress = 0.0
            secondsPassed = 0
            let eggTypeTag = sender.tag
            
            if let time = eggTimes[eggTypeTag] {
                totalTime = time
            }
            
            timerLabel.text = "\(totalTime / 60):00"
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progress.progress = Float(secondsPassed) / Float(totalTime)
            
            let minutesLeft = (totalTime - secondsPassed) / 60
            let secondsLeft = (totalTime - secondsPassed) % 60
            timerLabel.text = "\(minutesLeft):\(String(format: "%02d", secondsLeft))"
        } else {
            timer.invalidate()
            timerLabel.text = "DONE!"
            playSound()
        }
    }

    func playSound() {
        if let soundURL = Bundle.main.url(forResource: "alarm_sound", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: soundURL)
            player?.play()
        }
    }
}

