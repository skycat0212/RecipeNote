//
//  RecipeCollectionViewCell.swift
//  RecipeNote
//
//  Created by Kim on 2021/02/04.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class RecipeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setComponent() {
//        foodImg =
        foodName.text = "food Name"
        
    }

}
