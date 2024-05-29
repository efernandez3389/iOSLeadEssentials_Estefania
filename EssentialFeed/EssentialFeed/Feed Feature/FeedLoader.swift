//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 5/5/24.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
