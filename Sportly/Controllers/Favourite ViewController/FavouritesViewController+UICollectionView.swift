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
        if isFilttered{
            numOfRow = leaguesFiltteredArray.count
        }else{
            numOfRow = leaguesNameArray.count
        }
        return numOfRow
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var webView = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        let cell = favouriteCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "FavouriteCollectionViewCell", for: indexPath) as! FavouriteCollectionViewCell
        if isFilttered{
            cell.favouriteName.text = leaguesNameArray[indexPath.row]
            cell.favouriteImage.sd_setImage(with: URL(string: self.leaguesBadgesArray[indexPath.row] ?? ""), completed: nil)
            if(self.leaguesYoutubeArray[indexPath.row] == ""){
                cell.youtubeIcon.isHidden = true
            }else{
                cell.youTubeButton = {
                    webView.webURL = self.leaguesYoutubeArray[indexPath.row] ?? ""
                    self.present(webView, animated: true, completion: nil)
                }
            }
            cell.deleteButton = {
                self.deleteData(var: self.leaguesIdArray[indexPath.row])
                self.leaguesFiltteredArray.remove(at: indexPath.row)
                self.leaguesIdArray.remove(at: indexPath.row)
                self.leaguesYoutubeArray.remove(at: indexPath.row)
                self.leaguesBadgesArray.remove(at: indexPath.row)
                self.favouriteCollectionViewCell.reloadData()
            }
        }else{
            cell.favouriteName.text = leaguesNameArray[indexPath.row]
            cell.favouriteImage.sd_setImage(with: URL(string: self.leaguesBadgesArray[indexPath.row] ?? "" ), completed: nil)
            if(self.leaguesYoutubeArray[indexPath.row] == ""){
                cell.youtubeIcon.isHidden = true
            }else{
                cell.youTubeButton = {
                    webView.webURL = self.leaguesYoutubeArray[indexPath.row] ?? ""
                    self.present(webView, animated: true, completion: nil)
                }
            }
            cell.deleteButton = {
                self.deleteData(var: self.leaguesIdArray[indexPath.row])
                self.leaguesNameArray.remove(at: indexPath.row)
                self.leaguesIdArray.remove(at: indexPath.row)
                self.leaguesYoutubeArray.remove(at: indexPath.row)
                self.leaguesBadgesArray.remove(at: indexPath.row)
                self.favouriteCollectionViewCell.reloadData()
                
            }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width - 24
        return CGSize(width: widthPerItem, height: 110)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        leagueName = leaguesNameArray[indexPath.row]
        leagueId = leaguesIdArray[indexPath.row]
        leagueBadge = leaguesBadgesArray[indexPath.row] ?? ""
        leagueYoutube = leaguesYoutubeArray[indexPath.row]
        performSegue(withIdentifier: "favouriteSegue", sender: self)
    }
}
