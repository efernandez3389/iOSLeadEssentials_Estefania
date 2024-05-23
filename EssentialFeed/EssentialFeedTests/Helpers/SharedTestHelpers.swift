//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Estefania Fernandez on 19/5/24.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "Any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
