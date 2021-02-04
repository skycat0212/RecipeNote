//
//  ViewController.swift
//  RecipeNote
//
//  Created by Kim on 2021/02/04.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toMain()
    }
    
    func toMain() {
        let vc = MainViewController(nibName: "MainViewController", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    

}

