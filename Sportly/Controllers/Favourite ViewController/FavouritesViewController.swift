//
//  FavouritesViewController.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit
import CoreData
class FavouritesViewController: UIViewController {
    
    @IBOutlet weak var favouriteSearchBar: UISearchBar!
    @IBOutlet weak var favouriteCollectionViewCell: UICollectionView!
    static var context = appDelegate.persistentContainer.viewContext
    var entity: NSEntityDescription?
    static var myFavourites = [NSManagedObject]()
    var LeaguesArray = Array<LeaguesFav>()
     var LeaguesFiltteredArray = Array<LeaguesFav>()
    var isFilttered = false
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static var favourite = NSManagedObject()
    
    var item1 = LeaguesFav(id: "123", str: "league1")
    var item2 = LeaguesFav(id: "456", str: "sleague")
    var item3 = LeaguesFav(id: "1783", str: "aleague")
    var item4 = LeaguesFav(id: "1423", str: "kleague")

    override func viewDidLoad() {
        super.viewDidLoad()
        deleteData()
        saveData()
        fetchData()
        deleteData()
        favouriteCollectionViewCell.layer.cornerRadius = 20
        registerCells()
        LeaguesArray.append(item1)
        LeaguesArray.append(item2)
        LeaguesArray.append(item3)
        LeaguesArray.append(item4)
        favouriteCollectionViewCell.reloadData()
        
        favouriteSearchBar.delegate = self
    }
    
    func registerCells() {
        let favouriteCell = UINib(nibName: String(describing: FavouriteCollectionViewCell.self), bundle: nil)
        favouriteCollectionViewCell.register(favouriteCell, forCellWithReuseIdentifier: "FavouriteCollectionViewCell")
    }
}

