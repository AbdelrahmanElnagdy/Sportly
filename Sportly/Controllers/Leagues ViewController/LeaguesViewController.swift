//
//  LeaguesViewController.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class LeaguesViewController: UIViewController {
    @IBOutlet weak var leaguesCollectionView: UICollectionView!
    var leagues = [LeagueElement]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllLeagues()
        registerCells()
        leaguesCollectionView.layer.cornerRadius = 20
        self.navigationController?.isNavigationBarHidden = true

    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
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
                print(leagues)
            case.failure(let error):
                print(error)
                AppCommon.shared.showSwiftMessage()
            }
        }
    }
    
    func registerCells() {
        let LeaguesCell = UINib(nibName: String(describing: LeaguesTableViewCell.self), bundle: nil)
        leaguesCollectionView.register(LeaguesCell, forCellWithReuseIdentifier: "LeaguesTableViewCell")
    }
}
