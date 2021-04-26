//
//  LeaguesViewController+UISearchBar.swift
//  Sportly
//
//  Created by SOHA on 4/24/21.
//

import UIKit
extension LeaguesViewController: UISearchBarDelegate{
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
        isFilttered = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar){
        isFilttered = false
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        leageuesFiltered.removeAll(keepingCapacity: false)
        for item in self.leagues {
                if (item.strLeague.lowercased().contains(searchBar.text!.lowercased())) {
                    self.leageuesFiltered.append(item)
                }
            }
            if (searchBar.text!.isEmpty) {
                self.leageuesFiltered = self.leagues
            }
        self.leaguesCollectionView.reloadData()
    }
}
