//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 14/7/24.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
