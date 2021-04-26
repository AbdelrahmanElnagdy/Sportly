//
//  LeagueDetailsViewController.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit

class LeagueDetailsViewController: UIViewController {
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var eventsCollectionView: UICollectionView!
    @IBOutlet weak var lastEventsCollectionView: UICollectionView!
    @IBOutlet weak var teamsCollectionView: UICollectionView!
    var events = [Event]()
    var id: String?
    var LeagueName: String?
    var teams = [Team]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        getAllEvents()
        getAllTeams()
        registerCells()
    }
    
    func getAllEvents() {
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getAllEvents(id: id ?? "") {[weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let events):
                self.events = events.events ?? []
                self.eventsCollectionView.reloadData()
                self.lastEventsCollectionView.reloadData()
            case .failure( _):
                AppCommon.shared.showSwiftMessage()
            }
        }
    }
    
    func getAllTeams() {
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getAllTeams(leagueName: LeagueName ?? "") {[weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let teams):
                self.teams = teams.teams
                self.teamsCollectionView.reloadData()
            case .failure( _):
                AppCommon.shared.showSwiftMessage(title: "Error", message:"Some thing went wrong, Please try again"  , theme: .error)
            }
        }
    }
    
    func setViews() {
        headerImage.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 35)
        eventsCollectionView.layer.cornerRadius = 20
        eventsCollectionView.layer.borderWidth = 0.5
        eventsCollectionView.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        lastEventsCollectionView.layer.cornerRadius = 20
        lastEventsCollectionView.layer.borderWidth = 0.5
        lastEventsCollectionView.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        teamsCollectionView.layer.cornerRadius = 20
        teamsCollectionView.layer.borderWidth = 0.5
        teamsCollectionView.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    }
    
    func registerCells() {
        let eventsCell = UINib(nibName: String(describing: EventsCollectionViewCell.self), bundle: nil)
        eventsCollectionView.register(eventsCell, forCellWithReuseIdentifier: "EventsCollectionViewCell")
        
        let lasEventsCell = UINib(nibName: String(describing: LatestResultsCollectionViewCell.self), bundle: nil)
        lastEventsCollectionView.register(lasEventsCell, forCellWithReuseIdentifier: "LatestResultsCollectionViewCell")
        
        let teamCell = UINib(nibName: String(describing: TeamsCollectionViewCell.self), bundle: nil)
        teamsCollectionView.register(teamCell, forCellWithReuseIdentifier: "TeamsCollectionViewCell")
    }
    
}
