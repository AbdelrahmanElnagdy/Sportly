//
//  LeagueDetails.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 21/04/2021.
//

import Foundation
struct LeagueDetails: Codable {
    let detailedLeagues: [DetailedLeague]
}

// MARK: - League
struct DetailedLeague: Codable {
    let idLeague, idAPIfootball, strSport, strLeague: String
    let strLeagueAlternate, strDivision, idCup, strCurrentSeason: String
    let intFormedYear, dateFirstEvent, strGender, strCountry: String
    let strWebsite, strFacebook, strTwitter, strYoutube: String
    let strRSS, strDescriptionEN, strDescriptionFR, strDescriptionIT: String
    let strFanart1, strFanart2, strFanart3, strFanart4: String
    let strBanner: String
    let strBadge, strLogo: String
    let strPoster: String
    let strTrophy: String
    let strNaming, strComplete, strLocked: String
}
