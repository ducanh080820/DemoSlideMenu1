//
//  ViewController.swift
//  DemoSlideMenu1
//
//  Created by Trần Đức Anh on 10/26/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var slideMenu = false
    
    @IBAction func changeButton(_ sender: UIBarButtonItem) {
        if !slideMenu {
            leadingConstraint.constant = 150
            slideMenu = true
        } else {
            leadingConstraint.constant = 0
            slideMenu = false
        }
        
        UIView.animate(withDuration: 0.35, delay: 0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

