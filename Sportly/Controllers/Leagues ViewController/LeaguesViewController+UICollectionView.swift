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
        var webView = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        let cell = leaguesCollectionView.dequeueReusableCell(withReuseIdentifier: "LeaguesTableViewCell", for: indexPath) as! LeaguesTableViewCell
        if isFilttered{
            cell.leagueName.text = leageuesFiltered[indexPath.row].strLeague
            cell.leagueLogo.sd_setImage(with: URL(string: leageuesFiltered[indexPath.row].strBadge ?? ""), completed: nil)
            if(self.leageuesFiltered[indexPath.row].strYoutube == ""){
                cell.youtubeBtn.isHidden = true
            }else{
                cell.youTubeButton = {
                    webView.webURL = self.leageuesFiltered[indexPath.row].strYoutube ?? ""
                    self.present(webView, animated: true, completion: nil)
                }
            }
        }
        else{
            cell.leagueName.text = leagues[indexPath.row].strLeague
            cell.leagueLogo.sd_setImage(with: URL(string: leagues[indexPath.row].strBadge ?? ""), completed: nil)
            if(self.leagues[indexPath.row].strYoutube == ""){
                cell.youtubeBtn.isHidden = true
            }else{
                cell.youTubeButton = {
                    webView.webURL = self.leagues[indexPath.row].strYoutube ?? ""
                    self.present(webView, animated: true, completion: nil)
                }
            }
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthPerItem = collectionView.bounds.width - 30
        return CGSize(width: widthPerItem, height: 80)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if isFilttered{
            leagueName = leageuesFiltered[indexPath.row].strLeague ?? ""
            leagueId = leageuesFiltered[indexPath.row].idLeague ?? ""
            leagueYoutube = leageuesFiltered[indexPath.row].strYoutube ?? ""
            leagueBadge = leageuesFiltered[indexPath.row].strBadge ?? ""
        }else{
            leagueName = leagues[indexPath.row].strLeague ?? ""
            leagueId = leagues[indexPath.row].idLeague ?? ""
            leagueYoutube = leagues[indexPath.row].strYoutube ?? ""
            leagueBadge = leagues[indexPath.row].strBadge ?? ""
        }
        performSegue(withIdentifier: "leagueSegue", sender: self)
    }
}

