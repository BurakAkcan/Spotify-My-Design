//
//  APIMethod.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import Foundation

import Foundation

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
    case delete = "DELETE"
    case put = "PUT"
}

enum HttpScheme: String {
    case http = "http"
    case https = "https"
}

protocol API {
    var method: HttpMethod { get }
    var scheme: HttpScheme { get }
    var host: String { get }
    var path: String { get }
    var parameters: [URLQueryItem]? { get }
}
