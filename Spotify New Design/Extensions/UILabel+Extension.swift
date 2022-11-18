//
//  UILabel+Extension.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 16.11.2022.
//

import UIKit

extension UILabel {

    @objc var substituteFontName : String {
        get { return self.font.fontName }
        set { self.font = UIFont(name: newValue, size: self.font.pointSize) }
    }
}
