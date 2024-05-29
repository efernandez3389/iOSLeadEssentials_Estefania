//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 8/5/24.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    /// The completion handler can be invoked in any thread
    /// Clients are responsible to dipatch to appropriate threads, if needed
    func get(from url: URL, completion: @escaping (Result) -> Void)
}

