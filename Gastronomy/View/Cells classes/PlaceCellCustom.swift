//
//  PlaceCellCustom.swift
//  Gastronomy
//
//  Created by Daniel on 10.11.20.
//

import UIKit

class PlaceCellCustom: UICollectionViewCell {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeDescription: UILabel!
    @IBOutlet weak var rateImage: UIImageView!
    @IBOutlet weak var totalRate: UILabel!
    @IBOutlet weak var ratings: UILabel!
    @IBOutlet weak var delivery: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let image = Bundle.main.path(forResource: "star", ofType: "png") {
            rateImage.image = UIImage(contentsOfFile: image)
        }
        if let image = Bundle.main.path(forResource: "free", ofType: "png") {
            delivery.setBackgroundImage(UIImage(contentsOfFile: image), for: .normal)
        }
        addCornerRadius(&mainImage, hemicycle: false, radius: 10.0)
        delivery.titleLabel?.adjustsFontSizeToFitWidth = true
        delivery.titleLabel?.allowsDefaultTighteningForTruncation = true
    }
    
    
    
    
    
}
