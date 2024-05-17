//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 17/5/24.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
