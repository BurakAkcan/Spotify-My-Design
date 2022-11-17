//
//  FeedResponse.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

public struct FeedResponse: Codable {
    let title: String
    let id: String
    let icon: String
    let results: [SongResult]
}
