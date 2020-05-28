//
//  CollectionViewCell.swift
//  restaurants_final
//
//  Created by Diego Espinosa on 2020-05-27.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var theLabel: UILabel!
    
    public func configure(with theText: String){
        theLabel.layer.cornerRadius = 10
        theLabel.layer.masksToBounds = true
        theLabel.text = theText
    }
}
