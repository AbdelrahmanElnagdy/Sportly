//
//  Sport.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
struct Sport: Codable {
    let sports: [SportElement]
}

struct SportElement: Codable {
    let idSport, strSport: String
    let strFormat: StrFormat
    let strSportThumb, strSportThumbGreen: String
    let strSportDescription: String
}

enum StrFormat: String, Codable {
    case eventSport = "EventSport"
    case teamvsTeam = "TeamvsTeam"
}
