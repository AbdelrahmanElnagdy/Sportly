//
//  ViewController+UICollectionView.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 20/04/2021.
//

import Foundation
import UIKit
import SDWebImage

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sports.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = sportsCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.sportName.text = sports[indexPath.item].strSport
        cell.sportImage.sd_setImage(with: URL(string: sports[indexPath.item].strSportThumb), completed: nil)
        return cell
    }
    
    func registerCells() {
        let collectionViewCell = UINib(nibName: String(describing: HomeCollectionViewCell.self), bundle: nil)
        sportsCollectionView.register(collectionViewCell, forCellWithReuseIdentifier: "HomeCollectionViewCell")
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width / 2 - 30
        return CGSize(width: widthPerItem, height: 110)

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let leaguesViewController = storyboard?.instantiateViewController(identifier: "LeaguesViewController") as! LeaguesViewController
        self.navigationController?.pushViewController(leaguesViewController, animated: true)
    }
    
    
    
}
