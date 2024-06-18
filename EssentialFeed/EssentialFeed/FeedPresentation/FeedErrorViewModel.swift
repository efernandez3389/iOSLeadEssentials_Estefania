//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 18/6/24.
//

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
