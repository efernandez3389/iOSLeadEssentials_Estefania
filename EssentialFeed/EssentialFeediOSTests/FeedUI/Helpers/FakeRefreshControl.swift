//
//  FakeRefreshControl.swift
//  EssentialFeediOSTests
//
//  Created by Estefania Fernandez on 9/6/24.
//

import UIKit

class FakeRefreshControl: UIRefreshControl {
    var _isRefreshing = false
    
    override var isRefreshing: Bool { _isRefreshing }
    
    override func beginRefreshing() {
        _isRefreshing = true
    }
    
    override func endRefreshing() {
        _isRefreshing = false
    }
}
