//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 19/6/24.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
