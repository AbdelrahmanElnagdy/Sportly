//
//  League.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation

struct League: Codable {
    let leagues: [LeagueElement]
}

struct LeagueElement: Codable {
    let idLeague, strLeague: String
    let strLeagueAlternate: String?
    let strSport: String
}
