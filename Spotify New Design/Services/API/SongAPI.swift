//
//  SongAPI.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

enum SongAPI: API {
    
    case song
    
    var method: HttpMethod {
        switch self {
        case .song:
            return .get
        }
    }
    
    var scheme: HttpScheme {
        switch self {
        case .song:
            return .https
        }
    }
    
    var host: String {
        switch self {
        case .song:
            return "rss.applemarketingtools.com"
        }
    }
    
    var path: String {
        switch self {
        case .song:
            return "/api/v2/tr/music/most-played/50/songs.json"
        }
    }
    
    var parameters: [URLQueryItem]? {
        switch self {
        case .song :
            return nil
        }
    }
    
    
}


//https://rss.applemarketingtools.com/api/v2/tr/music/most-played/50/songs.json
//"rss.applemarketingtools.com"
//"/api/v2/tr/music/most-played/50/songs.json"
