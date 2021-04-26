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
        }
        else{
            cell.leagueName.text = leagues[indexPath.row].strLeague
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width - 30
        return CGSize(width: widthPerItem, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let VC = storyboard?.instantiateViewController(withIdentifier: "LeagueDetailsViewController") as! LeagueDetailsViewController
        VC.LeagueName = leagues[indexPath.row].strLeague
        VC.id = leagues[indexPath.row].idLeague
        
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}
