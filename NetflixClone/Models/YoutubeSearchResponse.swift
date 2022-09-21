//
//  YoutubeSearchResponse.swift
//  NetflixClone
//
//  Created by Aldair Martinez on 21/09/22.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
