//
//  Events.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 22/04/2021.
//

import Foundation
struct Events: Codable {
    var events: [Event]
}
struct Event: Codable {
    
    var dateEvent: String
    var dateEventLocal: String
    var idAPIfootball: String
    var idAwayTeam: String
    var idEvent: String
    var idHomeTeam: String
    var idLeague: String
    var intAwayScore: String
    var intAwayShots: Int
    var intHomeScore: String
    var intHomeShots: Int
    var intRound: String
    var intSpectators: Int
    var strAwayFormation: String
    var strAwayGoalDetails: String
    var strAwayLineupDefense: String
    var strAwayLineupForward: String
    var strAwayLineupGoalkeeper: String
    var strAwayLineupMidfield: String
    var strAwayLineupSubstitutes: String
    var strAwayRedCards: String
    var strAwayTeam: String
    var strAwayYellowCards: String
    var strBanner: String
    var strCity: String
    var strCountry: String
    var strDescriptionEN: String
    var strEvent: String
    var strEventAlternate: String
    var strFanart: String
    var strFilename: String
    var strThumb: String
}
