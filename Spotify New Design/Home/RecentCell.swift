//
//  RecentCell.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 16.11.2022.
//

import UIKit

class RecentCell: HomeBaseCell {
    
    static let identifier = String(describing: RecentCell.self)
    
    override func setCell(item: String) {
        //add some
        
    }
    
    override func configureCell() {
        addSubview(contentLabel)
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor,constant: -20),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: contentView.frame.width),
            imageView.heightAnchor.constraint(equalToConstant: contentView.frame.size.height*0.8 ),
            
            contentLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 2),
            contentLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 2),
            contentLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -2),
            contentLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2)
        ])
        //imageView.layoutIfNeeded()
    }
}

