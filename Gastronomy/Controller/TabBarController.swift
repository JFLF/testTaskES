//
//  TabBarController.swift
//  Gastronomy
//
//  Created by Daniel on 11.11.20.
//

import UIKit

class TabBarController: UITabBarController {
    
    @IBOutlet weak var menu: UITabBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        menu.items?[0].title = NSLocalizedString("Explore", comment: "")
        menu.items?[1].title = NSLocalizedString("My order", comment: "")
        menu.items?[2].title = NSLocalizedString("Favorite", comment: "")
        menu.items?[3].title = NSLocalizedString("Profile", comment: "")
    }
}

