//
//  TeamsCollectionViewCell.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class TeamsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.circular()
        imageView.layer.borderWidth = 0.3
        imageView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }

}
