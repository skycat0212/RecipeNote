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
    @IBOutlet weak var addRecipeBtn: UIButton!
    
    override func viewDidLoad() {
        
        recipeCollectionView.delegate = self
        recipeCollectionView.dataSource = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // MARK: - 컬렉션 뷰 셀 등록
        let nibName = UINib(nibName: "RecipeCollectionViewCell", bundle: nil)
        recipeCollectionView.register(nibName, forCellWithReuseIdentifier: "recipeCell")
        
        // MARK: -
        
        
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func addRecipeBtnClicked(_ sender: Any) {
        let vc = AddRecipeViewController(
            nibName: "AddRecipeViewController", bundle: Bundle.main
        )
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
}
// MARK: - collectionview 및 cell 세팅
extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recipeCollectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipeCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let cellwidth = recipeCollectionView.bounds.width/10*3
        let cellheight = cellwidth/2*3
        
        return CGSize(width: cellwidth, height: cellheight)
    }

}
