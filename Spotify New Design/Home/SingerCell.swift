//
//  SingerCell.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit
import Kingfisher

class SingerCell: UICollectionViewCell {
    
    static let identifier = String(describing: SingerCell.self)
    
    private let imageView: UIImageView = {
       let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .yellow
        

        return iv
    }()
    
    private let singerNameLabel: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.minimumScaleFactor = 0.3
        lbl.text = "Singer test"
        lbl.font = .systemFont(ofSize: 12, weight: .medium)
        lbl.numberOfLines = 1
        lbl.textAlignment = .center
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
    }
    
    
    override func layoutSubviews() {
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = min(imageView.frame.width/2, imageView.frame.height/2)
        imageView.layer.masksToBounds = true
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setCell(_ item: AlbumResults) {
        //add some
        print(item)
        if let url = URL(string: item.artworkUrl100) {
            imageView.kf.setImage(with: url)
        }
        singerNameLabel.text = item.name
    }
}
 
private extension SingerCell {
    func configureCell() {
        addSubview(singerNameLabel)
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor,constant: -20),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 70),

            singerNameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 2),
            singerNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 2),
            singerNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -2)
        ])
        imageView.layoutIfNeeded()
    }
}
