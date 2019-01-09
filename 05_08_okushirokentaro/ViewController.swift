//
//  ViewController.swift
//  05_08_okushirokentaro
//
//  Created by 奥城健太郎 on 2019/01/05.
//  Copyright © 2019年 奥城健太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fromAppDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate

    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var alert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as? TimerViewController
        let _ = next?.view
        next?.count = setCount
    }
    
    var setCount = 0.0
    
    @IBAction func start(_ sender: Any) {
        if let a = TextField.text{
            if let n = Double(a){
                setCount = n
                alert.text = ""
                performSegue(withIdentifier: "goTimer", sender: nil)
            }else{
                alert.text = "数字を入力して下さい"
            }
        }
    }
    
}

