//
//  HeroesModel.swift
//  MarvelHeroes
//
//  Created by Вячеслав Терентьев on 04.07.2022.
//

import Foundation

struct HeroesModel: Decodable {
    let id: Int
    let name: String
    let description: String
    let modified: String
    let thumbnail: Thumbnail
}

struct Thumbnail: Decodable {
    let path: String
    let `extension`: String
    var url: URL? {
        return URL(string: path + "." + `extension`)
    }
}
