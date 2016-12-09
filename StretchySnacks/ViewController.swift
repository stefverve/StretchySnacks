//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Stefan Verveniotis on 2016-12-08.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBarHeight: NSLayoutConstraint!
    
    @IBOutlet weak var snackButton: UIButton!
    
    
    
    var isExpanded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("pew pew button")
        if isExpanded {
            UIView .animate(withDuration: 0.3, animations: {
                self.snackButton.transform = CGAffineTransform.identity
            })
            UIView .animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 3.0, options: UIViewAnimationOptions.curveEaseInOut, animations: ({
                self.navBarHeight.constant = 64
                self.view .layoutIfNeeded()
            }), completion: nil)
            self.isExpanded = false
        } else {
            UIView .animate(withDuration: 0.3, animations: {
                self.snackButton.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_4))
            })
            UIView .animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 3.0, options: UIViewAnimationOptions.curveEaseInOut, animations: ({
                self.navBarHeight.constant = 200
                self.view .layoutIfNeeded()
            }), completion: nil)
            self.isExpanded = true
        }
        
    }

}

