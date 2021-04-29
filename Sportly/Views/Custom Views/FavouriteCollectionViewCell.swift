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
    @IBOutlet weak var youtubeIcon: UIButton!
    
    @IBOutlet weak var viewDelete: UIView!
    
    var youTubeButton : (()-> Void)? = nil
    var deleteButton : (()-> Void)? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.collectionCellLayout()
        favouriteImage.circular()
        viewDelete.roundCorners(corners: [.topRight, .bottomRight], radius: 35)
    }
    @IBAction func youtubeButton(_ sender: Any) {
        if let youTubeBtnIsClicked = youTubeButton {
            youTubeBtnIsClicked()
        }
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        if let deleteBtnIsClicked = deleteButton {
            deleteBtnIsClicked()
        }
    }
    
}
