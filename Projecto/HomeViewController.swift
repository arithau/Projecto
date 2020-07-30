//
//  HomeViewController.swift
//  Projecto
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    var menuShowing = false
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        
    }
    
    @IBAction func openMenu(_ sender: UIBarButtonItem) {
      if (menuShowing) {
                leadingConstraint.constant = -150
            }
            else {
                leadingConstraint.constant = 0
            }
            menuShowing = !menuShowing
    }
    
}
