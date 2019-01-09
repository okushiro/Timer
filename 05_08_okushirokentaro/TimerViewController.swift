//
//  TimerViewController.swift
//  05_08_okushirokentaro
//
//  Created by 奥城健太郎 on 2019/01/06.
//  Copyright © 2019 奥城健太郎. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    var count:Double = 0
    var timer = Foundation.Timer()
    var isPlaying = true

    @IBOutlet weak var countlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateCount), userInfo: nil, repeats: true)
        
        countlabel.text = String(format: "%.1f", count)
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func restart(_ sender: Any) {
        if isPlaying == true{
            return
        }
        
        isPlaying = true
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateCount), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
        isPlaying = false
    }
    
    @objc func UpdateCount(){
        count -= 0.01
        countlabel.text = String(format: "%.1f", count)
        
        if count <= 0 {
            timer.invalidate()
            isPlaying = false
            performSegue(withIdentifier: "toFinish", sender: nil)
        }
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
