//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 5/5/24.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
