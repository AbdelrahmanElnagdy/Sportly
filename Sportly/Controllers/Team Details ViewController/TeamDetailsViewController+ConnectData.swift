//
//  TeamDetailsViewController+ConnectData.swift
//  Sportly
//
//  Created by SOHA on 4/24/21.
//

import UIKit
extension TeamDetailsViewController {
    
    func getTeamDetails(){
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getTeamDetails(id: teamId) {[weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let teams):
                self.team = teams.teams
                self.teamName.text = teams.teams[0].strTeam
                self.countryName.text = teams.teams[0].strCountry
                self.staduimName.text = teams.teams[0].strStadium
                self.staduimDescription.text = teams.teams[0].strStadiumDescription
                self.leagueName.text = teams.teams[0].strLeague
                self.imageTeamLogo.sd_setImage(with: URL(string: teams.teams[0].strTeamBadge ?? ""), completed: nil)
                self.imageTeamBadge.sd_setImage(with: URL(string: teams.teams[0].strStadiumThumb!), completed: nil)
            case .failure( _):
                AppCommon.shared.showSwiftMessage()
            }
        }
    }
}
