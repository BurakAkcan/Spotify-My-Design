//
//  AdviceCell.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//


import UIKit

class AdviceCell: HomeBaseCell {
    
    static let identifier = String(describing: AdviceCell.self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentLabel.font = .boldSystemFont(ofSize: 16)
        contentLabel.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
