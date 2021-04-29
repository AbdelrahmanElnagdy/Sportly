//
//  LeaguesViewController.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class LeaguesViewController: UIViewController {
    
    @IBOutlet weak var leaguesSearchBar: UISearchBar!
    @IBOutlet weak var leaguesCollectionView: UICollectionView!
    var sportName = ""
    var leagues = [LeagueElement]()
    var leageuesFiltered = [LeagueElement]()
    var isFilttered = false
    var leagueId = ""
    var leagueName = ""
    var leagueBadge = ""
    var leagueYoutube = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllLeagues()
        leaguesCollectionView.layer.cornerRadius = 20
        self.navigationController?.isNavigationBarHidden = true
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        registerCells()
        leaguesSearchBar.delegate = self
    }
    
    func getAllLeagues(){
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getAllLeagues(sportName: sportName) {[weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let leagues):
                self.leagues = leagues.countrys
                self.leaguesCollectionView.reloadData()
            case.failure(let error):
                print(error)
                AppCommon.shared.showSwiftMessage(title: "Error", message: "Some thing went wrong, Please try again" , theme: .error)
            }
        }
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func registerCells() {
        let LeaguesCell = UINib(nibName: String(describing: LeaguesTableViewCell.self), bundle: nil)
        leaguesCollectionView.register(LeaguesCell, forCellWithReuseIdentifier: "LeaguesTableViewCell")
    }
}


