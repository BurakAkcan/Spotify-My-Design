//
//  AppDelegate.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 14.11.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let animationController = AnimationsController()
        
        window?.rootViewController = animationController
        window?.makeKeyAndVisible()
        
        setTheme()
        
        return true
    }
    
    private func setTheme() {
        UILabel.appearance(whenContainedInInstancesOf: [UIView.self]).textColor = .white
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font : UIFont(name: "Myanmar Sangam MN Bold", size: 26)!]
        UILabel.appearance().substituteFontName = "Myanmar Sangam MN Bold"

    }
}

