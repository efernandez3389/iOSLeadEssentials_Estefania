//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Estefania Fernandez on 8/9/24.
//

import XCTest
import EssentialFeed

class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExists(in: bundle, table)
    }
}
