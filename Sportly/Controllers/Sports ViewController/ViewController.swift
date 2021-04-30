//
//  ViewController.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sportsCollectionView: UICollectionView!
    var sports = [SportElement]()
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        getAllSports()
        sportsCollectionView.layer.cornerRadius = 20
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func getAllSports(){
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getAllSports { [weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let sports):
                self.sports = sports.sports
                print(sports)
                self.sportsCollectionView.reloadData()
            case.failure( _):
                AppCommon.shared.showSwiftMessage(title: "Error", message:"Some thing went wrong, Please try again" , theme: .error)
            }
        }
    }
}

