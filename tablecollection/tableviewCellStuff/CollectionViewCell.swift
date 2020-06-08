//
//  CollectionViewCell.swift
//  tablecollection
//
//  Created by Nikoghosyan Gevorg on 6/8/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let id = "CollectionCell"
    static func nib()-> UINib {
        return UINib(nibName: "CollectionViewCell", bundle: nil)
    }
    @IBOutlet weak var image : UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with model : Model) {
        image.image = UIImage(named: model.image)
        image.contentMode = .scaleAspectFill
    }
}
