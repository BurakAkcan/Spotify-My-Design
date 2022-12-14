//
//  HomeVC_CV_Extension.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension HomeViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return albumResults.count
        }else if section == 1 {
            return songResults.count
        }else {
            
            return adviceList.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SingerCell.identifier, for: indexPath) as? SingerCell else {
                return UICollectionViewCell()
            }
            cell.setCell(self.albumResults[indexPath.item])
            return cell
        }
          else if indexPath.section == 1 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecentCell.identifier, for: indexPath) as? RecentCell else {
                return UICollectionViewCell()
            }
                  cell.setCell(item: songResults[indexPath.item])
            return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdviceCell.identifier, for: indexPath) as? AdviceCell else {
                return UICollectionViewCell()
            }
            cell.setCell(item: adviceList[indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.identifier, for: indexPath) as? HeaderView else {
            return UICollectionReusableView()
        }
        if let sectionTitleList = sectionTitleList {
            header.setSectionTitle(title: sectionTitleList[indexPath.section])
        }
       return header
    }
}
