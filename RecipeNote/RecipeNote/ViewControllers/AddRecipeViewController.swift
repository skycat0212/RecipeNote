//
//  AddRecipeViewController.swift
//  RecipeNote
//
//  Created by Kim on 2021/03/04.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class AddRecipeViewController: UIViewController {

    @IBOutlet weak var foodTitle: UITextField!
    var foodTitleUnderline: CALayer! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        setTitleUI()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func setTitleUI() {
        foodTitle.borderStyle = .none
//        border = CALayer()
        if foodTitleUnderline != nil {
            return
        }
        foodTitleUnderline = CALayer()
        foodTitleUnderline!.frame = CGRect(x: 0, y: foodTitle.frame.size.height-1, width: foodTitle.frame.width, height: 1)
        foodTitleUnderline!.backgroundColor = UIColor.darkGray.cgColor
        foodTitle.layer.addSublayer(foodTitleUnderline!)
        foodTitle.textAlignment = .center
        foodTitle.textColor = UIColor.darkGray
    }
    
}
