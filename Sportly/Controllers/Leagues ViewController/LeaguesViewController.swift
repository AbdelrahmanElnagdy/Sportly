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
    var leagues = [LeagueElement]()
    var leageuesFiltered = [LeagueElement]()
    var isFilttered = false
    var leaguesDetailedLogoArray = [String]()
    var leaguesDetailedLogoArrayFiltered = [String]()
    var leaguesYoutubeArray = [String]()
    var leaguesYoutubeArrayfiltered = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllLeagues()
        leaguesCollectionView.layer.cornerRadius = 20
        self.navigationController?.isNavigationBarHidden = true
        leaguesSearchBar.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        registerCells()
    }
    
    func getAllLeagues(){
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getAllLeagues { [weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let leagues):
                self.leagues = leagues.leagues
                self.leaguesCollectionView.reloadData()
            case.failure(let error):
                print(error)
                AppCommon.shared.showSwiftMessage(title: "Error", message: "Some thing went wrong, Please try again" , theme: .error)
            }
        }
    }
    
    func registerCells() {
        let LeaguesCell = UINib(nibName: String(describing: LeaguesTableViewCell.self), bundle: nil)
        leaguesCollectionView.register(LeaguesCell, forCellWithReuseIdentifier: "LeaguesTableViewCell")
    }
}


