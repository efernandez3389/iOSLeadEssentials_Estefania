//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Estefania Fernandez on 9/6/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
