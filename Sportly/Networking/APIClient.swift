//
//  APIClient.swift
//  Sportly
//
//  Created by Abdelrahman Elnagdy on 19/04/2021.
//
import Alamofire
import Foundation
import NVActivityIndicatorView

class APIClient {
   private static func performRequest<T: Decodable>(route: APIRouter, decoder: JSONDecoder = JSONDecoder(), completion: @escaping (Result<T, NetworkError>) -> Void) {
        guard AppCommon.shared.checkConnectivity() else {
            return
        }
        AF.request(route).validate(statusCode: 200 ..< 300)
            .responseDecodable { (response: AFDataResponse<T>) in
                switch response.result {
                case .success(let model):
                    completion(.success(model))
                    break
                case .failure(let error):
                    debugPrint(error)
                    print(error.localizedDescription)
                    do {
                        guard let data = response.data else {
                            completion(.failure(.other))
                            return
                        }
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
//                        print(json)
                        if let message = (json as? [String: Any])?["Message"] as? String {
                            completion(.failure(.networkError(message: message)))
                        } else {
                            completion(.failure(.networkError(message: error.localizedDescription)))
                        }
                    } catch {
                        completion(.failure(.networkError(message: error.localizedDescription)))
                    }
                    break
                }
        }
    }
    
    static func getAllSports(completion:@escaping (Result<Sport, NetworkError>) -> Void) {
        APIClient.performRequest(route: APIRouter.allSports, completion: completion)
    }
    
    static func getAllLeagues(completion:@escaping (Result<League, NetworkError>) -> Void) {
         APIClient.performRequest(route: APIRouter.allLeagues, completion: completion)
     }
    
    static func getLeagueDetails(id: String, completion:@escaping (Result<LeagueDetails, NetworkError>) -> Void) {
         APIClient.performRequest(route: APIRouter.leagueDetails(id: id), completion: completion)
     }
    
    static func getAllTeams(leagueName: String, completion:@escaping (Result<Teams, NetworkError>) -> Void) {
         APIClient.performRequest(route: APIRouter.allTeams(leagueName: leagueName), completion: completion)
     }
    static func getAllEvents(id: String, completion:@escaping (Result<Events, NetworkError>) -> Void) {
         APIClient.performRequest(route: APIRouter.allEvents(id: id), completion: completion)
     }
    
    
}
