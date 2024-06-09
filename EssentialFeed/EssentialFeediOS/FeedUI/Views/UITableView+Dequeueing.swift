//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Estefania Fernandez on 9/6/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
