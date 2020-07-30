//
//  ViewController.swift
//  Projecto
//
//  Created by Ariadna Thau on 7/29/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func segueButtonPressed(_ sender: Any) {
       }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

           super.prepare(for: segue, sender: sender)

           if let secondViewController = segue.destination as? HomeViewController {
               secondViewController.modalPresentationStyle = .fullScreen
           }
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

