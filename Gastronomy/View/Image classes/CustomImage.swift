//
//  CustomImage.swift
//  Gastronomy
//
//  Created by Daniel on 11.11.20.
//

import UIKit

class CustomImage: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        roundAndShadow()
    }
    
    func roundAndShadow() {
        self.layer.cornerRadius =  self.frame.height/2

    }

}
