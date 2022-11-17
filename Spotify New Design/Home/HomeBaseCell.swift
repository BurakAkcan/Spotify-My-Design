//
//  HomeBaseCell.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import UIKit

class HomeBaseCell: UICollectionViewCell {
    
     let imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .yellow
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
        
        return iv
    }()
    
     let contentLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.minimumScaleFactor = 0.3
        lbl.text = "content test"
        lbl.font = .systemFont(ofSize: 14, weight: .medium)
        return lbl
    }()
    
   
     
     override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
       configureCell()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    public func setCell(item: String) {
        
    }
    
    func configureCell() {
        
    }
    
}



