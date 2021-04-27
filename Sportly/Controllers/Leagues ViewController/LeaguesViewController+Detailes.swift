//
//  LeaguesViewController+Detailes.swift
//  Sportly
//
//  Created by SOHA on 4/25/21.
//

import UIKit
extension LeaguesViewController{
    
    func getLeagueDetailsID(idLeague:String){
        AppCommon.shared.showSportlyLoadingLogo(self)
        APIClient.getLeagueDetailsID(id: idLeague) {[weak self] result in
            guard let self = self else {return}
            AppCommon.shared.hideSportlyLoadingLogo()
            switch result{
            case .success(let leagues):
               if self.isFilttered{
                self.leaguesDetailedLogoArrayFiltered.append(leagues.detailedLeagues[0].strBadge)
                self.leaguesYoutubeArrayfiltered.append(leagues.detailedLeagues[0].strYoutube)
                }
                self.leaguesDetailedLogoArray.append(leagues.detailedLeagues[0].strBadge)
                self.leaguesYoutubeArray.append(leagues.detailedLeagues[0].strYoutube)
                print(leagues.detailedLeagues[0].strCountry)
                
            case .failure( _):
                AppCommon.shared.showSwiftMessage()
            }
        }
    }
}

