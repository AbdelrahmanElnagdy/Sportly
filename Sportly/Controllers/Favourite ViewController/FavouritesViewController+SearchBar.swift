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
//            LeaguesFiltteredArray.removeAll(keepingCapacity: false)
//            for item in self.LeaguesArray {
//                if (item.strLeague.lowercased().contains(searchBar.text!.lowercased())) {
//                    self.LeaguesFiltteredArray.append(item)
//                }
//            }
//            if (searchBar.text!.isEmpty) {
//                self.LeaguesFiltteredArray = self.LeaguesArray
//            }
//            self.favouriteCollectionViewCell.reloadData()
    }
}
