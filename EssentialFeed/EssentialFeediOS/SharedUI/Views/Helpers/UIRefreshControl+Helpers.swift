//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Estefania Fernandez on 17/6/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
