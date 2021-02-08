//
//  MainViewController.swift
//  RecipeNote
//
//  Created by Kim on 2021/02/04.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var recipeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        recipeCollectionView.delegate = self
        recipeCollectionView.dataSource = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let nibName = UINib(nibName: "RecipeCollectionViewCell", bundle: nil)
        recipeCollectionView.register(nibName, forCellWithReuseIdentifier: "recipeCell")
        
        
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

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recipeCollectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipeCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

//        return CGSize(width: self.view.bounds.width, height: self.view.bounds.height/3)
//        return CGSize(width: 100, height: 150)
//        return CGSize(width: (recipeCollectionView.superview?.bounds.height)!/3/3*2 , height: (recipeCollectionView.superview?.bounds.height)!/3)
//        return CGSize(width: self.view.bounds.height/3/3*2, height: self.view.bounds.height/3)
        return CGSize(width: recipeCollectionView.bounds.height/10/3*2*3 , height: recipeCollectionView.bounds.height/10*3)
    }

}
