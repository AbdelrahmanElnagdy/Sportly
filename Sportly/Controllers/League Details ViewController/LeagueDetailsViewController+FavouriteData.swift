//
//  LeagueDetailsViewController+FavouriteData.swift
//  Sportly
//
//  Created by SOHA on 4/28/21.
//

import UIKit
import CoreData
extension LeagueDetailsViewController{
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
        saveData()
    }
    func saveData() {
        entity = NSEntityDescription.entity(forEntityName: "Favourites", in: FavouritesViewController.context)
        let myLeague = NSManagedObject(entity: entity!, insertInto: FavouritesViewController.context)
        if checkDataCore() == false{
            favButton.tintColor = UIColor.red
            myLeague.setValue(self.id, forKey: Keys.idLeague)
            myLeague.setValue( self.LeagueName, forKey: Keys.strLeague)
            myLeague.setValue(self.strYoutube, forKey: Keys.strYoutube)
            myLeague.setValue(self.strBadge, forKey: Keys.strBadge)
        }else{
            favButton.tintColor = UIColor.gray
        }
        try? FavouritesViewController.context.save()
        print("data stored")
    }
    
    func isFavourite() -> Bool{
        var isFavorite = false
        for item in FavouritesViewController.myFavourites {
            if let title = item.value(forKey: Keys.idLeague){
                if title as? String == self.id{
                    isFavorite = !isFavorite
                    break
                }
            }
        }
        return isFavorite
    }
    func checkDataCore() -> Bool{
        var isExist = false
        for item in FavouritesViewController.myFavourites {
            if let title = item.value(forKey: Keys.idLeague){
                if title as? String == self.id{
                    isExist = !isExist
                    FavouritesViewController.context.delete(item)
                    break
                }
            }
        }
        return isExist
    }
}

