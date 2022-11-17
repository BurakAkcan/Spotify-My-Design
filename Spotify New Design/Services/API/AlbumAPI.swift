//
//  Playlist.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

enum AlbumAPI: API {
    
case album
    
    var method: HttpMethod {
        switch self {
        case .album:
            return .get
        }
    }
    
    var scheme: HttpScheme {
        switch self {
        case .album:
            return .https
        }
    }
    
    var host: String {
        switch self {
        case .album:
            return "rss.applemarketingtools.com"
        }
    }
    
    var path: String {
        switch self {
        case .album:
            return "/api/v2/tr/music/most-played/25/playlists.json"
        }
    }
    
    var parameters: [URLQueryItem]? {
        switch self {
        case .album:
            return nil
        }
    }
}

//https://rss.applemarketingtools.com/api/v2/tr/music/most-played/25/playlists.json
