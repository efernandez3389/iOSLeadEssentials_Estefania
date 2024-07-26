//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 5/5/24.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemMapper.map)
    }
}
