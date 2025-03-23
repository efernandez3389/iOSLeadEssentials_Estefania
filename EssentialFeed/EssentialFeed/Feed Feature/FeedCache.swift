//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 14/7/24.
//

import Foundation

public protocol FeedCache {    
    func save(_ feed: [FeedImage]) throws
}
