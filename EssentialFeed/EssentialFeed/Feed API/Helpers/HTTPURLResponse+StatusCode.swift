//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Estefania Fernandez on 28/6/24.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
