//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 14/7/24.
//

import Foundation

public protocol FeedCache {
    typealias SaveResult = Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (SaveResult) -> Void)
}
