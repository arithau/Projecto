//
//  QuizResultViewController.swift
//  Projecto
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class QuizResultViewController: UIViewController {

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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
