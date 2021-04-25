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
    var webViewController:WebViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webViewController = self.storyboard?.instantiateViewController(identifier: "WebViewController") as! WebViewController
        setViews()
        getTeamDetails()
    }
    
    func setViews() {
        imageTeamLogo.layer.cornerRadius = imageTeamLogo.frame.height/2
        viewTeamDetails.roundCorners(corners: [.allCorners], radius: 35)
    }
    
    @IBAction func openFacebook(_ sender: Any) {
        AppCommon.shared.showSportlyLoadingLogo(self)
        webViewController.webURL = team[0].strFacebook
        present(webViewController, animated: true, completion: nil)
    }
    
    @IBAction func openInstagram(_ sender: Any) {
        AppCommon.shared.showSportlyLoadingLogo(self)
        webViewController.webURL = team[0].strInstagram
        present(webViewController, animated: true, completion: nil)
    }
    
    @IBAction func openTwitter(_ sender: Any) {
        AppCommon.shared.showSportlyLoadingLogo(self)
        webViewController.webURL = team[0].strTwitter
        present(webViewController, animated: true, completion: nil)
    }
}


