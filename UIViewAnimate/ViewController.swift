//
//  ViewController.swift
//  UIViewAnimate
//
//  Created by Sandra Gomez on 5/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func animate(whichWay: Bool) {
        UIView.animate(withDuration: 2.0, delay: 0.5, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.2, options: [.repeat, .autoreverse], animations : {
        if whichWay {
            self.myImageView.center.y -= 250
        } else {
            self.myImageView.center.y += 250
        }
    })
}
    
    @IBAction func startButton(_ sender: UIButton) {
        animate(whichWay: true)
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        animate(whichWay: false)
    }
}

