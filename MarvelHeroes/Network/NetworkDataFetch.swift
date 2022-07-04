//
//  NetworkDataFetch.swift
//  MarvelHeroes
//
//  Created by Вячеслав Терентьев on 04.07.2022.
//

import Foundation

class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    private init() {}
    
    func fetchMarvelHeroes(responce: @escaping ([HeroesModel]?, Error?) -> Void) {
        
        NetworkRequest.shared.requestData { result in
            
            switch result {
                
            case .success(let data):
                do {
                    let heroes = try JSONDecoder().decode([HeroesModel].self, from: data)
                    responce(heroes, nil)
                } catch let jsonError {
                    print("Failed to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error \(error.localizedDescription)")
                responce(nil, error)
            }
        }
    }
}
