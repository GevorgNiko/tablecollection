//
//  TableViewCell.swift
//  tablecollection
//
//  Created by Nikoghosyan Gevorg on 6/8/20.
//  Copyright © 2020 Nikoghosyan Gevorg. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.id, for: indexPath) as? CollectionViewCell {
            let modelsingle = model[indexPath.row]
            cell.configure(with: modelsingle)
            return cell
        }
        return UICollectionViewCell()
    }
    
    var model: [Model] = []
    @IBOutlet weak var collectionview: UICollectionView!
    static let id = "tableCell"
    static func nib() -> UINib {
        return  UINib(nibName: "TableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionview.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.id)
        collectionview.delegate = self
        collectionview.dataSource = self
    }
    func configure(with models: [Model]) {
        self.model = models
        collectionview.reloadData()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
        }
    }
    

