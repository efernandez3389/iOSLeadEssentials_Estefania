//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Estefania Fernandez on 9/6/24.
//

import XCTest
import EssentialFeed

final class FeedLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        
        assertLocalizedKeyAndValuesExists(in: bundle, table)
    }
}
