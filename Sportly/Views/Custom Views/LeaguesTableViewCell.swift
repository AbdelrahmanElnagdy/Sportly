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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        countainerView.collectionCellLayout()
    }

    
    @IBAction func leagueButtonPressed(_ sender: Any) {
    }
}
