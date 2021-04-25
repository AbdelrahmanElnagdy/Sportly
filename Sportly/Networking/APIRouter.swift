//
//  APIRouter.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//

import Foundation
import Alamofire


enum APIRouter: URLRequestConvertible {
    case allSports
    case allLeagues
    case allCounries
    case leagueDetails(id: String)
    case allTeams(leagueName: String)
    case allEvents(id: String)
    case teamDetails(id: String)
    
    private var method: HTTPMethod {
        return .get
    }
    private var path: String {
        switch self {
        case .allSports:
            return K.Urls.allSports
        case .allLeagues:
            return K.Urls.allLeagues
        case .allCounries:
            return K.Urls.allCountries
        case .leagueDetails:
            return K.Urls.leagueDetails
        case .allTeams:
            return K.Urls.allTeams
        case .allEvents:
            return K.Urls.lastEvents
        case .teamDetails:
            return K.Urls.teamDetails
        }
    }
    private var encoding: ParameterEncoding {
        switch self {
        case .allCounries, .allLeagues, .allSports, .leagueDetails, .allTeams, .allEvents, .teamDetails:
            return URLEncoding(destination: .queryString)
        }
    }
    private var parameters: [String: Any]? {
        switch self {
        case .leagueDetails(id: let id):
            return ["id":id]
        case .allTeams(leagueName: let leagueName):
            return ["l": leagueName]
        case .allEvents(id: let id):
            return ["id": id]
        case.teamDetails(id : let id):
            return["id": id]
        default:
            return [:]
        }
        
    }
    func asURLRequest() throws -> URLRequest {
        let url = try K.ProductionServer.baseURL.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        
        return try encoding.encode(urlRequest, with: parameters)
    }
    
}
