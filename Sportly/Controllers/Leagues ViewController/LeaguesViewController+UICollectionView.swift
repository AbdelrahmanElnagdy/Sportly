//
//  LeaguesViewController+UICollectionView.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 21/04/2021.
//

import Foundation
import UIKit
import SDWebImage
extension LeaguesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numOFRow = 0
        if isFilttered {
            numOFRow = leageuesFiltered.count
        }
        else{
            numOFRow = leagues.count
        }
        return numOFRow
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = leaguesCollectionView.dequeueReusableCell(withReuseIdentifier: "LeaguesTableViewCell", for: indexPath) as! LeaguesTableViewCell
        if isFilttered{
            cell.leagueName.text = leageuesFiltered[indexPath.row].strLeague
            self.getLeagueDetailsID(idLeague: leageuesFiltered[indexPath.row].idLeague)
            DispatchQueue.main.asyncAfter(deadline: .now()+2){
                cell.leagueLogo.sd_setImage(with: URL(string: self.leaguesDetailedLogoArrayFiltered[indexPath.row]), completed: nil)
                cell.strYoutube = self.leaguesYoutubeArrayfiltered[indexPath.row]
            }
        }
        else{
            cell.leagueName.text = leagues[indexPath.row].strLeague
            self.getLeagueDetailsID(idLeague: leagues[indexPath.row].idLeague)
            DispatchQueue.main.asyncAfter(deadline: .now()+2){
                cell.leagueLogo.sd_setImage(with: URL(string: self.leaguesDetailedLogoArray[indexPath.row]), completed: nil)
                cell.strYoutube = self.leaguesYoutubeArray[indexPath.row]
            }
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width - 30
        return CGSize(width: widthPerItem, height: 80)
    }
}

