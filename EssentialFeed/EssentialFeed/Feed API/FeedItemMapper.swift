//
//  FeedItemMapper.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 8/5/24.
//

import Foundation

public final class FeedItemMapper {
    
    private struct Root: Decodable {
        private let items: [RemoteFeedItem]
        
        private struct RemoteFeedItem: Decodable {
            internal let id: UUID
            internal let description: String?
            internal let location: String?
            internal let image: URL
        }
        
        var images: [FeedImage] {
            items.map { FeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.image) }
        }
    }
        
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [FeedImage] {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
                throw RemoteFeedLoader.Error.invalidData
        }
   
        return root.images
    }
}

