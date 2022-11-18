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

//
//class A {
//    let a = BaseTabbarController()
//    func test() {
//        a.setTabbars()
//       let _ =  a.createNavController(viewController: UIViewController(), imageName: "test")
//
//    }
//}
