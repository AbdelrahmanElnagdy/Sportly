//
//  Teams.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 21/04/2021.
//

import Foundation
struct Teams : Codable {
    
    let teams : [Team]
    
    enum CodingKeys: String, CodingKey {
        case teams = "teams"
    }
}

struct Team : Codable {
    
    let idAPIfootball : String?
    let idLeague : String?
    let idLeague2 : String?
    let idLeague3 : String?
    let idLeague4 : String?
    let idLeague5 : String?
    let idLeague6 : String?
    let idLeague7 : String?
    let idSoccerXML : String?
    let idTeam : String?
    let intFormedYear : String?
    let intLoved : String?
    let intStadiumCapacity : String?
    let strAlternate : String?
    let strCountry : String?
    let strDescriptionCN : String?
    let strDescriptionDE : String?
    let strDescriptionEN : String?
    let strDescriptionES : String?
    let strDescriptionFR : String?
    let strDescriptionHU : String?
    let strDescriptionIL : String?
    let strDescriptionIT : String?
    let strDescriptionJP : String?
    let strDescriptionNL : String?
    let strDescriptionNO : String?
    let strDescriptionPL : String?
    let strDescriptionPT : String?
    let strDescriptionRU : String?
    let strDescriptionSE : String?
    let strDivision : String?
    let strFacebook : String?
    let strGender : String?
    let strInstagram : String?
    let strKeywords : String?
    let strLeague : String?
    let strLeague2 : String?
    let strLeague3 : String?
    let strLeague4 : String?
    let strLeague5 : String?
    let strLeague6 : String?
    let strLeague7 : String?
    let strLocked : String?
    let strManager : String?
    let strRSS : String?
    let strSport : String?
    let strStadium : String?
    let strStadiumDescription : String?
    let strStadiumLocation : String?
    let strStadiumThumb : String?
    let strTeam : String?
    let strTeamBadge : String?
    let strTeamBanner : String?
    let strTeamFanart1 : String?
    let strTeamFanart2 : String?
    let strTeamFanart3 : String?
    let strTeamFanart4 : String?
    let strTeamJersey : String?
    let strTeamLogo : String?
    let strTeamShort : String?
    let strTwitter : String?
    let strWebsite : String?
    let strYoutube : String?
    
    enum CodingKeys: String, CodingKey {
        case idAPIfootball = "idAPIfootball"
        case idLeague = "idLeague"
        case idLeague2 = "idLeague2"
        case idLeague3 = "idLeague3"
        case idLeague4 = "idLeague4"
        case idLeague5 = "idLeague5"
        case idLeague6 = "idLeague6"
        case idLeague7 = "idLeague7"
        case idSoccerXML = "idSoccerXML"
        case idTeam = "idTeam"
        case intFormedYear = "intFormedYear"
        case intLoved = "intLoved"
        case intStadiumCapacity = "intStadiumCapacity"
        case strAlternate = "strAlternate"
        case strCountry = "strCountry"
        case strDescriptionCN = "strDescriptionCN"
        case strDescriptionDE = "strDescriptionDE"
        case strDescriptionEN = "strDescriptionEN"
        case strDescriptionES = "strDescriptionES"
        case strDescriptionFR = "strDescriptionFR"
        case strDescriptionHU = "strDescriptionHU"
        case strDescriptionIL = "strDescriptionIL"
        case strDescriptionIT = "strDescriptionIT"
        case strDescriptionJP = "strDescriptionJP"
        case strDescriptionNL = "strDescriptionNL"
        case strDescriptionNO = "strDescriptionNO"
        case strDescriptionPL = "strDescriptionPL"
        case strDescriptionPT = "strDescriptionPT"
        case strDescriptionRU = "strDescriptionRU"
        case strDescriptionSE = "strDescriptionSE"
        case strDivision = "strDivision"
        case strFacebook = "strFacebook"
        case strGender = "strGender"
        case strInstagram = "strInstagram"
        case strKeywords = "strKeywords"
        case strLeague = "strLeague"
        case strLeague2 = "strLeague2"
        case strLeague3 = "strLeague3"
        case strLeague4 = "strLeague4"
        case strLeague5 = "strLeague5"
        case strLeague6 = "strLeague6"
        case strLeague7 = "strLeague7"
        case strLocked = "strLocked"
        case strManager = "strManager"
        case strRSS = "strRSS"
        case strSport = "strSport"
        case strStadium = "strStadium"
        case strStadiumDescription = "strStadiumDescription"
        case strStadiumLocation = "strStadiumLocation"
        case strStadiumThumb = "strStadiumThumb"
        case strTeam = "strTeam"
        case strTeamBadge = "strTeamBadge"
        case strTeamBanner = "strTeamBanner"
        case strTeamFanart1 = "strTeamFanart1"
        case strTeamFanart2 = "strTeamFanart2"
        case strTeamFanart3 = "strTeamFanart3"
        case strTeamFanart4 = "strTeamFanart4"
        case strTeamJersey = "strTeamJersey"
        case strTeamLogo = "strTeamLogo"
        case strTeamShort = "strTeamShort"
        case strTwitter = "strTwitter"
        case strWebsite = "strWebsite"
        case strYoutube = "strYoutube"
    }
}


