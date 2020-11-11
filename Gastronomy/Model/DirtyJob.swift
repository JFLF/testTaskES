//
//  DirtyJob.swift
//  Gastronomy
//
//  Created by Daniel on 10.11.20.
//

import UIKit

/// add corner radius
/// - Parameters:
///   - view: view to round angles
///   - hemicycle: create hemicycle(true) or other radius(false)
///   - radius: desired radius
func addCornerRadius<T: UIView>(_ view: inout T, hemicycle: Bool, radius: CGFloat = 0.0) {
    let height = view.frame.height
    var cornerRadius: CGFloat = radius
    if hemicycle {
        cornerRadius = height/2
    }
    view.layer.cornerRadius = cornerRadius
}

/// add no-brake spaces before and after the text
/// - Parameter text: text to convert
/// - Returns: text with spaces
func addGaps(text: String)-> String {
    "\u{00A0}\(text)\u{00A0}"
}
