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
    var leaguesNameArray = [String]()
    var leaguesFiltteredArray = [String]()
    var leaguesIdArray = [String]()
    var leaguesYoutubeArray = [String]()
    var leaguesBadgesArray = [String?]()
    static var myFavourites = [NSManagedObject]()
    var isFilttered = false
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static var favourite = NSManagedObject()
    var leagueName = ""
    var leagueId = ""
    var leagueYoutube = ""
    var leagueBadge = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        favouriteCollectionViewCell.layer.cornerRadius = 20
        favouriteSearchBar.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        leaguesIdArray.removeAll()
        leaguesNameArray.removeAll()
        leaguesYoutubeArray.removeAll()
        leaguesBadgesArray.removeAll()
        fetchData()
        favouriteCollectionViewCell.reloadData()
    }
    
    func registerCells() {
        let favouriteCell = UINib(nibName: String(describing: FavouriteCollectionViewCell.self), bundle: nil)
        favouriteCollectionViewCell.register(favouriteCell, forCellWithReuseIdentifier: "FavouriteCollectionViewCell")
    }
    
}

