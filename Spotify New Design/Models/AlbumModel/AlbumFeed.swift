//
//  AlbumFeed.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

struct AlbumFeed: Codable {
    let title: String
    let id: String
    let copyright, country: String
    let results: [AlbumResults]
}
