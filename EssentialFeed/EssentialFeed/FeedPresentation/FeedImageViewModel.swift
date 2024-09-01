//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 19/6/24.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
