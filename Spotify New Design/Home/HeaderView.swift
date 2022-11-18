//
//  HeaderView.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit

class HeaderView: UICollectionReusableView {
    static let identifier = String(describing: HeaderView.self)
    
    private let sectionTitleLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 1
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setSectionTitle(title: String) {
        self.sectionTitleLabel.text = title
    }
    
}

private extension HeaderView {
    func configure() {
        addSubview(sectionTitleLabel)
        sectionTitleLabel.fillSuperview(padding: .init(top: 4, left: 8, bottom: 8, right: 0))
    }
}
