//
//  FavouritesViewController+UICollectionView.swift
//  Sportly
//
//  Created by SOHA on 4/21/21.
//

import Foundation
import UIKit
import SDWebImage

extension FavouritesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numOfRow = 0
//        if isFilttered{
//            numOfRow = LeaguesFiltteredArray.count
//        }else{
//            numOfRow = LeaguesArray.count
//        }
        return numOfRow
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = favouriteCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "FavouriteCollectionViewCell", for: indexPath) as! FavouriteCollectionViewCell
//        if isFilttered{
//            cell.favouriteName.text = LeaguesFiltteredArray[indexPath.row].strLeague
//        }else{
//            cell.favouriteName.text = LeaguesArray[indexPath.row].strLeague
//        }
//         cell.favouriteImage.sd_setImage(with: URL(), completed: nil)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width - 24
        return CGSize(width: widthPerItem, height: 110)
    }
}
