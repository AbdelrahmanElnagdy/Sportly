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
        return leagues.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = leaguesCollectionView.dequeueReusableCell(withReuseIdentifier: "LeaguesTableViewCell", for: indexPath) as! LeaguesTableViewCell
        cell.leagueName.text = leagues[indexPath.row].strLeague
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width - 30
        return CGSize(width: widthPerItem, height: 80)

    }
    
}
