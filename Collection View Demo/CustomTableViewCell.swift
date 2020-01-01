//
//  CustomTableViewCell.swift
//  Collection View Demo
//
//  Created by Md Sifat on 1/1/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
var product = [UIImage(imageLiteralResourceName: "6"), UIImage(imageLiteralResourceName: "12"), UIImage(imageLiteralResourceName: "8"), UIImage(imageLiteralResourceName: "14"), UIImage(imageLiteralResourceName: "5"), UIImage(imageLiteralResourceName: "13"), UIImage(imageLiteralResourceName: "7"), UIImage(imageLiteralResourceName: "16")]
    @IBOutlet weak var collectionview: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionview.delegate = self
        collectionview.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension CustomTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        cell.productImageView.image = product[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    
    
}
