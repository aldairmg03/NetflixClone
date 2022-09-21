//
//  Extensions.swift
//  NetflixClone
//
//  Created by Aldair Martinez on 20/09/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
