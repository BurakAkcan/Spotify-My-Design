//
//  SongResult.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

struct SongResult: Codable {
    let artistName, id, name, releaseDate: String
    let artistID: String
    let artistURL: String
    let artworkUrl100: String
    let url: String
    let contentAdvisoryRating: String?
    let genres: [SongGenre]

    enum CodingKeys: String, CodingKey {
        case artistName, id, name, releaseDate
        case artistID = "artistId"
        case artistURL = "artistUrl"
        case artworkUrl100, url, contentAdvisoryRating,genres
    }
}
