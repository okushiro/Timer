//
//  FinishViewController.swift
//  05_08_okushirokentaro
//
//  Created by 奥城健太郎 on 2019/01/08.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit
import AVFoundation

class FinishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            player = try AVAudioPlayer(contentsOf: audioPath, fileTypeHint: nil)
            player.play()
        }catch{
            print("")
        }
        
        // Do any additional setup after loading the view.
    }
    
    let audioPath = Bundle.main.bundleURL.appendingPathComponent("himei_kyaa_reverb.wav")
    
    var player = AVAudioPlayer()
    
    @IBAction func `return`(_ sender: Any) {
        performSegue(withIdentifier: "toTitle", sender: nil)
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
