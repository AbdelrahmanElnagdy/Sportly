//
//  FavouriteCollectionViewCell.swift
//  Sportly
//
//  Created by SOHA on 4/21/21.
//

import UIKit

class FavouriteCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var favouriteImage: UIImageView!
    @IBOutlet weak var favouriteName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.collectionCellLayout()
        favouriteImage.circular()
    }

}
