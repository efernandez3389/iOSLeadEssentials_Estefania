//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Estefania Fernandez on 7/6/24.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
