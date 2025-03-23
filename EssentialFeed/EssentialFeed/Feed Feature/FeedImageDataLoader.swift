//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 7/6/24.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
