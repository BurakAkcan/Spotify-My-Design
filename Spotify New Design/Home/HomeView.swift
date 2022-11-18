//
//  HomeView.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit

final class HomeView: UIView {
    
    //MARK: - Outputs
    
     let collectionView: UICollectionView = {
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, _ ) ->NSCollectionLayoutSection? in
            if sectionNumber == 0 {
                return sectionOne()
            }
            else {
                return sectionTwo()
            }
        }
         
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = #colorLiteral(red: 0.05566591769, green: 0.1092082337, blue: 0.1249511763, alpha: 1)
        return cv
    }()
    
    private let button: UIButton = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = #colorLiteral(red: 0.2100066841, green: 0.2179504633, blue: 0.2526758909, alpha: 1)
        btn.tintColor = .white
        //Sf symbols set size this
        let font = UIFont.systemFont(ofSize: 20)
        let config = UIImage.SymbolConfiguration(font: font)
        let image = UIImage(systemName: "bell.and.waveform",withConfiguration: config)
        btn.setImage(image, for: .normal)
        return btn
    }()
    
    let activityIndicator: UIActivityIndicatorView = {
        let aiv = UIActivityIndicatorView(style: .large)
        aiv.color = .black
        aiv.hidesWhenStopped = true
        return aiv
    }()
    
    //MARK: - Initiliaze
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCollectionView()
        registerCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        button.layer.cornerRadius = button.frame.width / 2
    }
}

private extension HomeView {
    
    func configureCollectionView() {
        addSubview(collectionView)
        addSubview(button)
        addSubview(activityIndicator)
        collectionView.fillSuperview()
        activityIndicator.fillSuperview()

        button.constrainHeight(constant: .sWdith*0.1)
        button.constrainWidth(constant: .sWdith*0.1)
        button.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        
    }
    
    func registerCell() {
        collectionView.register(SingerCell.self, forCellWithReuseIdentifier: SingerCell.identifier)
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.identifier)
        collectionView.register(AdviceCell.self, forCellWithReuseIdentifier: AdviceCell.identifier)
        collectionView.register(RecentCell.self, forCellWithReuseIdentifier: RecentCell.identifier)
    }
    
    
    static func sectionOne() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1/4), heightDimension: .fractionalHeight(1)))
        item.contentInsets = .init(top: 0, leading: 4, bottom: 16, trailing:4)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.85), heightDimension: .fractionalHeight(1/6)), subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        let kind = UICollectionView.elementKindSectionHeader
        section.contentInsets = .init(top: 0, leading: 6, bottom: 0, trailing: 0)
       
        section.boundarySupplementaryItems = [
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(46)), elementKind: kind, alignment: .topLeading)
        ]
        
        return section
    }
    
    
    static func sectionTwo() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1/3), heightDimension: .fractionalHeight(1)))
        item.contentInsets = .init(top: 0, leading: 8, bottom: 0, trailing: 8)
        //fractional width düzeltilecek
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.85), heightDimension: .fractionalHeight(1/6)), subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.orthogonalScrollingBehavior = .groupPaging
        let kind = UICollectionView.elementKindSectionHeader
        section.boundarySupplementaryItems = [
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(46)), elementKind: kind, alignment: .topLeading)
        ]
        return section
    }
}
