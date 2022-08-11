//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by ALEKSEY SUSLOV on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewWillLayoutSubviews() {
        originCoordinate = coreAnimationView.frame.origin.x
    }

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
            
            if self.originCoordinate == self.coreAnimationView.frame.origin.x {
                self.coreAnimationView.frame.origin.x -= 40
            }
        }
    }
    
}

