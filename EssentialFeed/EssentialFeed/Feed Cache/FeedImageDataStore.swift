//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 3/7/24.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
