//
//  ViewController.swift
//  Gastronomy
//
//  Created by Daniel on 10.11.20.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var discoveryLabel: UILabel!
    @IBOutlet weak var discovery: UICollectionView! {
        didSet {
            discovery.delegate = self
            discovery.dataSource = self
        }
    }
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var categories: UICollectionView! {
        didSet {
            categories.delegate = self
            categories.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.discovery.register(UINib(nibName: "PlaceCellCustom", bundle: nil), forCellWithReuseIdentifier: "PlaceCellCustom")
        self.categories.register(UINib(nibName: "CategoryCellCustom", bundle: nil), forCellWithReuseIdentifier: "CategoryCellCustom")
        setLabelText()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        customizeSearchBar()
    }
    
    func customizeSearchBar() {
        if let view1 = search.subviews.first {
            if let view2 = view1.subviews.last {
                if let view3 = view2.subviews.first {
                    if let view4 = view3.subviews.first {
                        if let view5 = view4.subviews.first{
                            view5.alpha = 0
                        }
                    }
                }
            }
        }
        search.layer.cornerRadius = search.frame.height/2
        search.layer.borderColor = UIColor(red: 186/255, green: 189/255, blue: 196/255, alpha: 1.0).cgColor
        search.layer.borderWidth = 1
    }
    
    func setLabelText() {
        discoveryLabel.text = NSLocalizedString("Discovery new places", comment: "")
        categoriesLabel.text = NSLocalizedString("Top categories", comment: "")
        discoveryLabel.text = NSLocalizedString("Discovery new places", comment: "")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == discovery {
            return Data.discoveryNames.count
        }
        return Data.categoryNames.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == discovery {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlaceCellCustom", for: indexPath) as? PlaceCellCustom {
                if let path = Bundle.main.path(forResource: Data.discoveryImages[indexPath.row], ofType: "jpg") {
                    cell.mainImage.image = UIImage(contentsOfFile: path)
                    cell.placeName.text = Data.discoveryNames[indexPath.row]
                    cell.placeDescription.text = Data.discoveryDescription[indexPath.row]
                    cell.totalRate.text = Data.discoveryTotalRating[indexPath.row]
                    cell.ratings.text = "(\(Data.discoveryRatings[indexPath.row]) \(NSLocalizedString("ratings", comment: "")))"
                    cell.delivery.setTitle(addGaps(text: NSLocalizedString("Free delivery", comment: "")), for: .normal)
                    if !Data.freeDelivery[indexPath.row] {
                        cell.delivery.alpha = 0.0
                    }
                }
                return cell
            }
        } else if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCellCustom", for: indexPath) as? CategoryCellCustom {
            if let path = Bundle.main.path(forResource: Data.categoryImages[indexPath.row], ofType: "jpg") {
                cell.mainImage.image = UIImage(contentsOfFile: path)
                cell.categoryName.text = NSLocalizedString(Data.categoryNames[indexPath.row], comment: "")
                cell.placesQuantity.text = "\(Data.categoryDescription[indexPath.row]) \(NSLocalizedString("places", comment: ""))"
            }
            return cell
        }
    return UICollectionViewCell()
    }
    

}

