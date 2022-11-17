//
//  BaseTabbarController.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 16.11.2022.
//

import UIKit

final class BaseTabbarController: UITabBarController {
    
    fileprivate lazy var defaultTabbarHeight = { tabBar.frame.size.height }()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setTabbars()
    }
    
//   override func viewDidLayoutSubviews() {
//        let newTabBarHeight = defaultTabbarHeight - 8
//        var newFrame = tabBar.frame
//        newFrame.size.height = newTabBarHeight
//        newFrame.origin.y = view.frame.size.height - newTabBarHeight
//        
//        tabBar.frame = newFrame
//    }
    
    
    private func setTabbars() {
        viewControllers = [
            createNavController(viewController: HomeViewController(), imageName: "house"),
            createNavController(viewController: UIViewController(), imageName: "magnifyingglass"),
            createNavController(viewController: UIViewController(), imageName: "books.vertical"),
            createNavController(viewController: UIViewController(), imageName: "person.circle")
        ]
        
        tabBar.tintColor = .systemGreen
        tabBar.backgroundColor = .clear
        tabBar.unselectedItemTintColor = .systemGray2.withAlphaComponent(0.4)
    }
    
    fileprivate func createNavController(viewController: UIViewController, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = UIImage(systemName: imageName)
       
        return navController
    }
}

