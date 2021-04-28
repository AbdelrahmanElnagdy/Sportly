//
//  League.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation

struct League: Codable {
    let countrys: [LeagueElement]
}

struct LeagueElement: Codable {
    let idLeague, strLeague: String?
    let strLeagueAlternate: String?
    let strSport: String?
    let idAPIfootball, idSoccerXML:String?
    let intFormedYear, strCurrentSeason, dateFirstEvent: String?
    let strGender, strCountry: String?
    let strWebsite, strFacebook, strYoutube, strTwitter: String?
    let strBadge: String?
}
