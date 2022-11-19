//
//  HomeBaseCell.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 17.11.2022.
//

import UIKit
import Kingfisher

class HomeBaseCell: UICollectionViewCell {
    
     let imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
        
        return iv
    }()
    
     let contentLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.minimumScaleFactor = 0.3
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
    
    func setCell(item: SongResult) {
       if let url = URL(string: item.artworkUrl100){
           imageView.kf.setImage(with: url)
       }
       contentLabel.text = item.name
   }
    
    func configureCell() {
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
    }
}



