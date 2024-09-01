//
//  SharedLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Estefania Fernandez on 27/7/24.
//

import XCTest
import EssentialFeed

final class SharedLocalizationTests: XCTestCase {
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        
        assertLocalizedKeyAndValuesExists(in: bundle, table)
    }
    
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
}
