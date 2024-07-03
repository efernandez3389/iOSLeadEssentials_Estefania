//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 3/7/24.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
