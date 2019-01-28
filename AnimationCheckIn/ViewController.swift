//
//  ViewController.swift
//  AnimationCheckIn
//
//  Created by Pritesh Nadiadhara on 1/28/19.
//  Copyright © 2019 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var cycle: UIButton!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 7.0, y: 7.0)
        })
    
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    @IBAction func transitionImage(_ sender: UIButton) {
        if cycle.imageView?.image == UIImage(named: "cyclist") {
            
            UIView.transition(with: cycle, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.cycle.setImage(UIImage(named: "explosion"), for: .normal)
                
            })
            
        } else {
            if cycle.imageView?.image == UIImage(named: "cyclist") {
                
                UIView.transition(with: cycle, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                    self.cycle.setImage(UIImage(named: "cyclist"), for: .normal)
                    
                })
            }
        }
    }
    
}

