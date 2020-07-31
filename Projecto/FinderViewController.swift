//
//  FinderViewController.swift
//  Projecto
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class FinderViewController: UIViewController {
    
var finderBrands = ["Whimsy + Row", "Reformation", "Thought Clothing", "Monsoon", "Mokuyobi", "Athleta", "Eileen Fisher", "People Tree", "Boden"]
    
    @IBOutlet weak var finderTextField: UITextField!

    @IBOutlet weak var finderLabel: UILabel!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func finderSubmit(_ sender: UIButton) {
    let showBrand = finderBrands.randomElement()
        finderLabel.text = showBrand
    }

}
