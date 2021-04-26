//
//  Events.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 22/04/2021.
//

import Foundation
struct Events: Codable {
  
    let events : [Event]?

    enum CodingKeys: String, CodingKey {
            case events = "events"
    }
}
struct Event: Codable {
    
    let dateEvent : String?
            let dateEventLocal : String?
            let idAPIfootball : String?
            let idAwayTeam : String?
            let idEvent : String?
            let idHomeTeam : String?
            let idLeague : String?
            let idSoccerXML : String?
            let intAwayScore : String?
            let intAwayShots : String?
            let intHomeScore : String?
            let intHomeShots : String?
            let intRound : String?
            let intSpectators : String?
            let strAwayFormation : String?
            let strAwayGoalDetails : String?
            let strAwayLineupDefense : String?
            let strAwayLineupForward : String?
            let strAwayLineupGoalkeeper : String?
            let strAwayLineupMidfield : String?
            let strAwayLineupSubstitutes : String?
            let strAwayRedCards : String?
            let strAwayTeam : String?
            let strAwayYellowCards : String?
            let strBanner : String?
            let strCity : String?
            let strCountry : String?
            let strDescriptionEN : String?
            let strEvent : String?
            let strEventAlternate : String?
            let strFanart : String?
            let strFilename : String?
            let strHomeFormation : String?
            let strHomeGoalDetails : String?
            let strHomeLineupDefense : String?
            let strHomeLineupForward : String?
            let strHomeLineupGoalkeeper : String?
            let strHomeLineupMidfield : String?
            let strHomeLineupSubstitutes : String?
            let strHomeRedCards : String?
            let strHomeTeam : String?
            let strHomeYellowCards : String?
            let strLeague : String?
            let strLocked : String?
            let strMap : String?
            let strOfficial : String?
            let strPoster : String?
            let strPostponed : String?
            let strResult : String?
            let strSeason : String?
            let strSport : String?
            let strSquare : String?
            let strStatus : String?
            let strThumb : String?
            let strTime : String?
            let strTimeLocal : String?
            let strTimestamp : String?
            let strTVStation : String?
            let strTweet1 : String?
            let strTweet2 : String?
            let strTweet3 : String?
            let strVenue : String?
            let strVideo : String?

            enum CodingKeys: String, CodingKey {
                    case dateEvent = "dateEvent"
                    case dateEventLocal = "dateEventLocal"
                    case idAPIfootball = "idAPIfootball"
                    case idAwayTeam = "idAwayTeam"
                    case idEvent = "idEvent"
                    case idHomeTeam = "idHomeTeam"
                    case idLeague = "idLeague"
                    case idSoccerXML = "idSoccerXML"
                    case intAwayScore = "intAwayScore"
                    case intAwayShots = "intAwayShots"
                    case intHomeScore = "intHomeScore"
                    case intHomeShots = "intHomeShots"
                    case intRound = "intRound"
                    case intSpectators = "intSpectators"
                    case strAwayFormation = "strAwayFormation"
                    case strAwayGoalDetails = "strAwayGoalDetails"
                    case strAwayLineupDefense = "strAwayLineupDefense"
                    case strAwayLineupForward = "strAwayLineupForward"
                    case strAwayLineupGoalkeeper = "strAwayLineupGoalkeeper"
                    case strAwayLineupMidfield = "strAwayLineupMidfield"
                    case strAwayLineupSubstitutes = "strAwayLineupSubstitutes"
                    case strAwayRedCards = "strAwayRedCards"
                    case strAwayTeam = "strAwayTeam"
                    case strAwayYellowCards = "strAwayYellowCards"
                    case strBanner = "strBanner"
                    case strCity = "strCity"
                    case strCountry = "strCountry"
                    case strDescriptionEN = "strDescriptionEN"
                    case strEvent = "strEvent"
                    case strEventAlternate = "strEventAlternate"
                    case strFanart = "strFanart"
                    case strFilename = "strFilename"
                    case strHomeFormation = "strHomeFormation"
                    case strHomeGoalDetails = "strHomeGoalDetails"
                    case strHomeLineupDefense = "strHomeLineupDefense"
                    case strHomeLineupForward = "strHomeLineupForward"
                    case strHomeLineupGoalkeeper = "strHomeLineupGoalkeeper"
                    case strHomeLineupMidfield = "strHomeLineupMidfield"
                    case strHomeLineupSubstitutes = "strHomeLineupSubstitutes"
                    case strHomeRedCards = "strHomeRedCards"
                    case strHomeTeam = "strHomeTeam"
                    case strHomeYellowCards = "strHomeYellowCards"
                    case strLeague = "strLeague"
                    case strLocked = "strLocked"
                    case strMap = "strMap"
                    case strOfficial = "strOfficial"
                    case strPoster = "strPoster"
                    case strPostponed = "strPostponed"
                    case strResult = "strResult"
                    case strSeason = "strSeason"
                    case strSport = "strSport"
                    case strSquare = "strSquare"
                    case strStatus = "strStatus"
                    case strThumb = "strThumb"
                    case strTime = "strTime"
                    case strTimeLocal = "strTimeLocal"
                    case strTimestamp = "strTimestamp"
                    case strTVStation = "strTVStation"
                    case strTweet1 = "strTweet1"
                    case strTweet2 = "strTweet2"
                    case strTweet3 = "strTweet3"
                    case strVenue = "strVenue"
                    case strVideo = "strVideo"
            }
    
}
