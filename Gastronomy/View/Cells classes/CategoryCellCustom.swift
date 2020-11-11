//
//  CategoryCellCustom.swift
//  Gastronomy
//
//  Created by Daniel on 10.11.20.
//

import UIKit

class CategoryCellCustom: UICollectionViewCell {

    @IBOutlet weak var mainImage: CustomImage!
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var placesQuantity: UILabel!
    
    func customize() {
        addCornerRadius(&mainImage, hemicycle: false, radius: 10.0)
        mainImage.layer.shadowColor = UIColor.gray.cgColor
        mainImage.layer.shadowOffset = .zero
        mainImage.layer.shadowOpacity = 1
        mainImage.layer.shadowRadius = 3.0
    }

}
