//
//  VerticalStackView.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit

class VerticalStackView: UIStackView {
    
    init(arrangedSubViews: [UIView], spacing: CGFloat = 0){
        super.init(frame: .zero)
        self.spacing = spacing
        self.axis = .vertical
        arrangedSubViews.forEach({
            addArrangedSubview($0)
        })
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


