//
//  FavouritesViewController+CoreData.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
import CoreData
extension FavouritesViewController{
    func  saveData() {
        entity = NSEntityDescription.entity(forEntityName: "Favourites", in: FavouritesViewController.context)
        let myLeague = NSManagedObject(entity: entity!, insertInto: FavouritesViewController.context)
        
        myLeague.setValue("1", forKey: Keys.idLeague)
        myLeague.setValue( "title", forKey: Keys.strLeague)
        
        try? FavouritesViewController.context.save()
        print("data stored")
    }
    
    func fetchData(){
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourites")
        FavouritesViewController.myFavourites = try! FavouritesViewController.context.fetch(fetchRequest) as! [NSManagedObject]
        
        for item in FavouritesViewController.myFavourites{
            if let str = item.value(forKey: Keys.idLeague){
                print(str)
            }
            if let str = item.value(forKey: Keys.strLeague){
                print(str)
            }
        }
    }
    
    func deleteData(){
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourites")
        FavouritesViewController.myFavourites = try! FavouritesViewController.context.fetch(fetchRequest) as! [NSManagedObject]
        for item in FavouritesViewController.myFavourites {
            if let title = item.value(forKey: Keys.idLeague){
                if title as? String == "1"{
                    FavouritesViewController.context.delete(item)
                }
            }
        }
        try? FavouritesViewController.context.save()
    }
}
