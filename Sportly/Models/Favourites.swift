//
//  Favourites.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
import CoreData
import UIKit
class FavouritesModel {
    static var context: NSManagedObjectContext?
    static var entity: NSEntityDescription?
    static var myFavourites = [NSManagedObject]()
    static var LeaguesArray = Array<League>()
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static var favourite = NSManagedObject()
    
    init() {
        
        
    }
    func saveData() {
        //        myFavourites = NSManagedObject(entity: entity!, insertInto: context)
        //        myFavourites?.setValue(nameTextField.text, forKey: "title")
        //        myFavourites?.setValue(yearTextField.text, forKey: "year")
        //        myFavourites?.setValue(ratingTextField.text, forKey: "rating")
        try? FavouritesModel.context?.save()
        
    }
    
    func updateData() {
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourite")
        //        movies = try! context?.fetch(fetchRequest) as! [NSManagedObject]
        //        for item in movies {
        //            if let title = item.value(forKey: "title"){
        //                if title as! String == ""{
        //                    item.setValue("Ali", forKey: "title")
        //                }
        //            }
        //        }
        //        try? context?.save()
        //        moviesTableView.reloadData()
    }
    
    static func deleteData() {
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourite")
        //        movies = try! context?.fetch(fetchRequest) as! [NSManagedObject]
        //        for item in movies {
        //            if let title = item.value(forKey: "title"){
        //                if title as? String == nameTextField.text{
        //                    context?.delete(item)
        //                }
        //            }
        //        }
        try? context?.save()
        //        moviesTableView.reloadData()
        
    }
    static func fetchCoreData()  {
        FavouritesModel.context = appDelegate.persistentContainer.viewContext
        entity = NSEntityDescription.entity(forEntityName: "Favourites", in: FavouritesModel.context!)
        favourite = NSManagedObject(entity: entity!, insertInto: FavouritesModel.context)
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Favourite")
        myFavourites = try! FavouritesModel.context?.fetch(fetchRequest) as! [NSManagedObject]
        //        for item in moviesArray {
        //            myMovie = NSManagedObject(entity: entity!, insertInto: context)
        //            myMovie?.setValue(item, forKey: "title")
        //            movies.append(myMovie!)
        //            moviesTableView.reloadData()
        //
        //        }
        
    }
    
}
