//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 5/5/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
