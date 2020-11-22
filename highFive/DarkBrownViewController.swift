//
//  DarkBrownViewController.swift
//  highFive
//
//  Created by Hosna Qasmei on 11/21/20.
//

import UIKit
import AVFoundation

class DarkBrownViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    var counterNumbers : Int = 0
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func countUp(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "Clap", ofType: "mp3")!
        let url = URL(fileURLWithPath: pathToSound)

        do {
           audioPlayer = try AVAudioPlayer(contentsOf: url)
           audioPlayer?.play()
        }
        catch {
           // error handling
        }

        self.counterNumbers+=1
        self.counter.text = String(self.counterNumbers)
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
