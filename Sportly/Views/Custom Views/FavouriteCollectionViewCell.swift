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
        self.containerView.layer.cornerRadius = 20
        self.containerView.layer.borderWidth = 0.5
        self.containerView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        favouriteImage.layer.cornerRadius = favouriteImage.frame.height/2
    }

}
