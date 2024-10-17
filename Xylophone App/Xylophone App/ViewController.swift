//
//  ViewController.swift
//  Xylophone App
//
//  Created by Apple on 17.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer?
    
    let music = ["A", "B", "C", "D", "E", "F", "G"]
    
    @IBAction func pressed(_ sender: UIButton) {

        let pressedButton = music[sender.tag - 1]
        
        if let soundURL = Bundle.main.url(forResource: pressedButton, withExtension: "wav") {
            
            if player != nil && player!.isPlaying {
                player!.stop()
            }
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.prepareToPlay()
                player?.play()
            } catch {
                print("Error playing sound: \(error)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

