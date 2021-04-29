//
//  FavouritesViewController+CoreData.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
import CoreData
extension FavouritesViewController{
    
    func fetchData(){
        var fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourites")
        FavouritesViewController.myFavourites = try! FavouritesViewController.context.fetch(fetchRequest) as! [NSManagedObject]
        for item in FavouritesViewController.myFavourites{
            if let str = item.value(forKey: Keys.idLeague){
                leaguesIdArray.append(str as! String)
                print(str)
            }
            if let str = item.value(forKey: Keys.strLeague){
                leaguesNameArray.append(str as! String)
                print(str)
            }
            if let str = item.value(forKey: Keys.strYoutube){
                leaguesYoutubeArray.append(str as! String)
                print(str)
            }
            if let str = item.value(forKey: Keys.strBadge){
                leaguesBadgesArray.append(str as! String)
                print(str)
            }
        }
    }
    
    func deleteData(var id:String?){
        var fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourites")
        FavouritesViewController.myFavourites = try! FavouritesViewController.context.fetch(fetchRequest) as! [NSManagedObject]
        for item in FavouritesViewController.myFavourites {
            if let title = item.value(forKey: Keys.idLeague){
                if title as? String == id{
                    FavouritesViewController.context.delete(item)
                    print("item is deleted")
                    self.favouriteCollectionViewCell.reloadData()
                }
            }
        }
        try? FavouritesViewController.context.save()
    }
}
