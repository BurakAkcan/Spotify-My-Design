//
//  SongResult.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

struct SongResult: Codable {
    let artistName, id, name: String
    let artistID: String
    let artistURL: String
    let artworkUrl100: String
    let url: String
    let genres: [SongGenre]

    enum CodingKeys: String, CodingKey {
        case artistName, id, name
        case artistID = "artistId"
        case artistURL = "artistUrl"
        case artworkUrl100, url
         case genres
    }
}
