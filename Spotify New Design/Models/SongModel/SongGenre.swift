//
//  SongGenre.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

struct SongGenre: Codable {
    let genreId : String
    let name: Name
    let url: String

}

enum Name: String, Codable {
    case alternative = "Alternative"
        case arabesque = "Arabesque"
        case hipHopRap = "Hip-Hop/Rap"
        case music = "Music"
        case pop = "Pop"
        case rock = "Rock"
        case turkish = "Turkish"
}
