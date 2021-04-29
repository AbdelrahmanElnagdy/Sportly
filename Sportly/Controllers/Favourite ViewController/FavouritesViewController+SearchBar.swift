//
//  FavouritesViewController+SearchBar.swift
//  Sportly
//
//  Created by SOHA on 4/24/21.
//

import UIKit

extension FavouritesViewController : UISearchBarDelegate{
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
        isFilttered = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar){
        isFilttered = false
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        leaguesFiltteredArray.removeAll(keepingCapacity: false)
        for item in self.leaguesNameArray {
            if (item.lowercased().contains(searchBar.text!.lowercased())) {
                self.leaguesFiltteredArray.append(item)
            }
        }
        if (searchBar.text!.isEmpty) {
            self.leaguesFiltteredArray = self.leaguesNameArray
        }
        self.favouriteCollectionViewCell.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let leagueDetailsDestination = segue.destination as?
            LeagueDetailsViewController
        let identifier = segue.identifier
        if identifier == "favouriteSegue"{
            leagueDetailsDestination!.LeagueName = leagueName
            leagueDetailsDestination!.id = leagueId
            leagueDetailsDestination?.strYoutube = leagueYoutube
            leagueDetailsDestination?.strBadge = leagueBadge
        }
    }
}
