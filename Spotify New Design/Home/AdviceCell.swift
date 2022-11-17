//
//  AdviceCell.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//


import UIKit

class AdviceCell: HomeBaseCell {
    
    
    static let identifier = String(describing: AdviceCell.self)
    
    override func setCell(item: String) {
        
    }
    
    override func configureCell() {
        contentLabel.font = .boldSystemFont(ofSize: 16)
        contentLabel.textColor = .black
        addSubview(imageView)
        imageView.addSubview(contentLabel)
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor,constant: -20),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: contentView.frame.width),
            imageView.heightAnchor.constraint(equalToConstant: contentView.frame.size.height*0.8 ),
            
            
            contentLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -30),
            contentLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor)
        ])
        //imageView.layoutIfNeeded()
    }
}
