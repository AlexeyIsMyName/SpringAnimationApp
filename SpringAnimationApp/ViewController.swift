//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by ALEKSEY SUSLOV on 11.08.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
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
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "squeeze"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 1
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        sender.animation = "wobble"
        sender.animate()
    }
    
}

