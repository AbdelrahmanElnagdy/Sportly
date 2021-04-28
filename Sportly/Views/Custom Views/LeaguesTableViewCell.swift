//
//  LeaguesTableViewCell.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class LeaguesTableViewCell: UICollectionViewCell {
    @IBOutlet weak var leagueName: UILabel!
    @IBOutlet weak var countainerView: UIView!
    var youTubeButton : (()-> Void)? = nil

    @IBOutlet weak var youtubeBtn: UIButton!
    
    var strYoutube : String?
    @IBOutlet weak var leagueLogo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()

        countainerView.layer.cornerRadius = 20
        self.countainerView.layer.borderWidth = 0.5
        self.countainerView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        leagueLogo.layer.cornerRadius = leagueLogo.frame.height/2
        
        countainerView.collectionCellLayout()

    }

    
    @IBAction func leagueButtonPressed(_ sender: Any) {
        if let youTubeBtnIsClicked = youTubeButton {
            youTubeBtnIsClicked()
        }
    }
}
