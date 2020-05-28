//
//  ViewController.swift
//  restaurants_final
//
//  Created by Diego Espinosa on 2020-05-27.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var cView: UICollectionView!
    @IBOutlet weak var cView2: UICollectionView!
    
    let foods = ["tacos", "burguer", "pasta", "bat", "ramen", "breakfast", "dinner", "tequila", "sushi", "coffe"]
    let sections = ["Mexican", "American", "Italian", "Chinese", "Korean", "Japanese", "Drinks", "Breakfast","Dinner", "Lunch"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (cView2.frame.width / 2) - 5, height: 140)
        cView2.collectionViewLayout = layout
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == cView2{
            return foods.count
        } else {
            return sections.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cView.dequeueReusableCell(withReuseIdentifier: "buttonsCell", for: indexPath) as! CollectionViewCell
        cell.configure(with: sections[indexPath.row])
        
        if collectionView == cView2 {
            let cell2 = cView2.dequeueReusableCell(withReuseIdentifier: "restaurantsCell", for: indexPath) as! CollectionViewCell2
            cell2.configure(with: UIImage(named: foods[indexPath.row])!)
            return cell2
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 2) - 5, height: 140)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        if collectionView == cView{
            
            switch indexPath.row {
            case 0:
                print("Mexican")
                // HERE I SHOULD UPDATE DE UI OF THE COLLECTION VIEW :(
                
            case 1:
                print("American")
                
            case 2:
                print("Italian")
                
            case 3:
                print("Chinese")
                
            case 4:
                print("Korean")
                
            case 5:
                print("Japanese")
                
            case 6:
                print("Drinks")
                
            case 7:
                print("Breakfast")
                
            case 8:
                print("Dinner")
                
            case 9:
                print("Lunch")
                
            default:
                print("Error")
            }
        }
        else{
            print("Restauran Tapped")
        }
    }
}
