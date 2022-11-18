//
//  ViewController.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 14.11.2022.
//

import UIKit


final class HomeViewController: UIViewController {
    
    //MARK: - Properties
    var sectionTitleList: [String]?
    var songResults: [SongResult] = []
    var albumResults: [AlbumResults] = []
    var adviceList:[SongResult] = []
    
    //MARK: - Outputs
    var sView = HomeView()
    
    override func loadView() {
        view = sView
        sView.collectionView.delegate = self
        sView.collectionView.dataSource = self
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Hello Bambang!"
        fetcDatas()
    }
    
    private func fetcDatas() {
        startActivity()
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        NetworkManager.request(endpoint: SongAPI.song) { [weak self] (result: Result<SongResponse,Error>) in
            dispatchGroup.leave()
            guard let self = self else { return }
            switch result {
            case .success(let response):
                self.songResults = response.feed.results
                self.adviceList = response.feed.results.reversed()
                print(self.songResults)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
        dispatchGroup.enter()
        NetworkManager.request(endpoint: AlbumAPI.album) { [weak self] (result: Result<AlbumResponse,Error>) in
            dispatchGroup.leave()
            guard let self = self else { return }
            switch result {
            case .success(let response):
                self.albumResults = response.feed.results
                self.albumResults.removeSubrange(0...5)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
        dispatchGroup.notify(queue: .main) {
            self.stopAnimating()
            self.sectionTitleList = ["Your favorite artist", "Recent played", "Made for you"]
            self.reloadCV()
            
        }
    }
}

//MARK: - Extensions

private extension HomeViewController {
    func reloadCV() {
        DispatchQueue.main.async {
            self.sView.collectionView.reloadData()
        }
    }
    
    func startActivity() {
        DispatchQueue.main.async {
            self.sView.activityIndicator.startAnimating()
        }
    }
    
    func stopAnimating() {
        DispatchQueue.main.async {
            self.sView.activityIndicator.stopAnimating()
        }
    }
}


