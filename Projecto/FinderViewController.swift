//
//  FinderViewController.swift
//  Projecto
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class FinderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         super.prepare(for: segue, sender: sender)

         if let secondViewController = segue.destination as? HomeViewController {
             secondViewController.modalPresentationStyle = .fullScreen
         }
     }

}
