//
//  Country.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
struct CountryElement: Codable {
    let nameEn: String

    enum CodingKeys: String, CodingKey {
        case nameEn = "name_en"
    }
}
