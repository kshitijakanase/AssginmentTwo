//
//  CollectionViewCell.swift
//  AssginmentTwo
//
//  Created by Coditas on 24/01/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var vendorName: UILabel!
    @IBOutlet weak var vendorAddress: UILabel!
    @IBAction func addBtn(_ sender: Any) {
    }
}
