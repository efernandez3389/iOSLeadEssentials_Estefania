//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Estefania Fernandez on 24/7/24.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
