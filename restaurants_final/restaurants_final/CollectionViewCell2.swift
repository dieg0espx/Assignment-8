//
//  CollectionViewCell2.swift
//  restaurants_final
//
//  Created by Diego Espinosa on 2020-05-27.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import UIKit

class CollectionViewCell2: UICollectionViewCell {
    @IBOutlet weak var theImage: UIImageView!
    
    public func configure(with image: UIImage){
        theImage.image = image
    }
}
