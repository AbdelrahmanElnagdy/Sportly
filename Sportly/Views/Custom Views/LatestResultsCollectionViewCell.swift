//
//  LatestResultsCollectionViewCell.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class LatestResultsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var firstTeamImage: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var secondTeamImage: UIImageView!
    @IBOutlet weak var firstTeamScore: UILabel!
    @IBOutlet weak var secondTeamScore: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.borderWidth = 0.5
        containerView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        containerView.layer.cornerRadius = 20
        secondTeamImage.layer.cornerRadius = 15
        
    }

}
