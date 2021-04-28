//
//  Urls.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
struct K {
    struct ProductionServer {
        static let baseURL = "https://www.thesportsdb.com/api/v1/json/1/"
        static let baseImageURL = ""
    }
    struct Urls {
        static let allSports = "all_sports.php"
        static let allLeagues = "search_all_leagues.php"
        static let allCountries = "all_countries.php"
        static let AllSeasons = "search_all_seasons.php"
        static let allTeams = "search_all_teams.php"
        static let leagueDetails = "search_all_leagues.php"
        static let lastEvents = "eventspastleague.php"
        static let teamDetails = "lookupteam.php"
        static let leagueDetailsId = "lookupleague.php"

        
    }
}
enum HTTPHeaderField: String {
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}

