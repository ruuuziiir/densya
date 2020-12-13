//
//  ViewController.swift
//  densya
//
//  Created by 7 on 2020/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var densya: UIImageView!
    
    @IBOutlet weak var yamonote: UIImageView!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    func updateLocation(degrees: CGFloat) {
            
        densya.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degrees).translatedBy(x: 0, y: -146)
        }
    
    @IBAction func densyaMove(_ sender: UISlider) {
        updateLocation(degrees: CGFloat(sender.value) + 458)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLocation(degrees: 458)

    }

    
    @IBAction func reset(_ sender: Any) {
        updateLocation(degrees: 458)
        sliderOutlet.value = 0
    }
}

