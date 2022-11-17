//
//  ViewController.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 14.11.2022.
//

import UIKit


class HomeViewController: UIViewController {
    
    //MARK: - Properties
    let sectionTitleList: [String] = [
      "Your favorite artist", "Recent played", "Made for you"
    ]
    
    //MARK: - Outputs
    var sView = HomeView()
    
 override func loadView() {
        view = sView
     sView.collectionView.delegate = self
     sView.collectionView.dataSource = self
     navigationController?.navigationItem.largeTitleDisplayMode = .always
     navigationController?.navigationBar.prefersLargeTitles = true
     navigationItem.title = "Hello Bambang!"
    }
}
