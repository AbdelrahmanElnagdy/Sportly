//
//  LeagueDetailsViewController+UICollectionView.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 21/04/2021.
//

import Foundation
import UIKit
import SDWebImage
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
        switch collectionView {
        case eventsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCollectionViewCell", for: indexPath) as! EventsCollectionViewCell
            cell.firstTeamName.text = events[indexPath.row].strAwayTeam
            cell.firstTeamImageView.sd_setImage(with: URL(string: events[indexPath.item].strThumb ?? ""), completed: nil)
            return cell
        case lastEventsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LatestResultsCollectionViewCell", for: indexPath) as! LatestResultsCollectionViewCell
            return cell
        case teamsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TeamsCollectionViewCell", for: indexPath) as! TeamsCollectionViewCell
            cell.teamName.text = teams[indexPath.item].strAlternate
            return cell
        default:
            return UICollectionViewCell()
        }
        
        
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case eventsCollectionView:
            return CGSize(width: collectionView.frame.width/2 - 30, height: collectionView.frame.height - 15)
        case lastEventsCollectionView:
            return CGSize(width: collectionView.frame.width - 30, height: collectionView.frame.height - 15)
        case teamsCollectionView:
            return CGSize(width: collectionView.frame.width/3 - 30, height: collectionView.frame.height - 10)
        default:
            return CGSize(width: collectionView.frame.width - 30, height: collectionView.frame.height - 15)
        }
        
    }
    
}
