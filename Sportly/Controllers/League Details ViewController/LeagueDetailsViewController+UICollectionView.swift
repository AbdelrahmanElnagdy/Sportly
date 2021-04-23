//
//  LeagueDetailsViewController+UICollectionView.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 21/04/2021.
//

import Foundation
import UIKit
extension LeagueDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case lastEventsCollectionView, eventsCollectionView:
            return events.count
        case teamsCollectionView:
            return teams.count
        default:
            return events.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
