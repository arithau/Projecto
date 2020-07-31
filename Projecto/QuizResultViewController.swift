//
//  QuizResultViewController.swift
//  Projecto
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Ariadna Thau. All rights reserved.
//

import UIKit

class QuizResultViewController: UIViewController {
    
    @IBOutlet weak var resultGreetingLabel: UILabel!
    @IBOutlet weak var resultBrandLabel: UILabel!
    

    var responses: [Answer]!
    var userBudget: [BrandInfo]!
    var userStyle : [BrandInfo]!
    var userWant : [BrandInfo]!
    var userBrands = [String]()

        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calculateSustainableFriend()
        navigationItem.hidesBackButton = true
    }
    
        func calculateSustainableFriend() {

            for brand in betterBrand {
                if brand.budget <= userBudget[0].budget && brand.fashion <= userStyle[0].fashion && brand.searching <= userWant[0].searching {
                    userBrands.append(brand.label)
                } else {
                    print(brand.label)
                }
            }
            let yourResult = userBrands.randomElement()
            resultGreetingLabel.text = "Congrats! Your sustainable bestie is..."
            resultBrandLabel.text = yourResult
        }
        
    
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         super.prepare(for: segue, sender: sender)

         if let secondViewController = segue.destination as? HomeViewController {
             secondViewController.modalPresentationStyle = .fullScreen
     _ = userBudget.map{$0.budget}
     _ = userStyle.map{$0.fashion}
     _ = userWant.map{$0.searching}
         }
     }
    */

}
