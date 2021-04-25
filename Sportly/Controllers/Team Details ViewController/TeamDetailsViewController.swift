//
//  TeamDetailsViewController.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import UIKit
class TeamDetailsViewController: UIViewController {
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var imageTeamBadge: UIImageView!
    @IBOutlet weak var imageTeamLogo: UIImageView!
    @IBOutlet weak var viewTeamDetails: UIView!
    @IBOutlet weak var leagueName: UILabel!
    @IBOutlet weak var staduimName: UILabel!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var staduimDescription: UITextView!
    var teamId =  "133626"
    var team = [Team]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        getTeamDetails()
    }
    
    func setViews() {
        imageTeamLogo.layer.cornerRadius = imageTeamLogo.frame.height/2
        viewTeamDetails.roundCorners(corners: [.allCorners], radius: 35)
    }
}


