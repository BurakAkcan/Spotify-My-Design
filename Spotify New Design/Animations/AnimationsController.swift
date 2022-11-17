//
//  MyVC.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit
import Lottie

class AnimationsController: UIViewController {
    
    var sView = AnimationsView()

    override func loadView() {
        super.loadView()
        view = sView
        sView.delegate = self
    }

}


extension AnimationsController: DidFinishAnimation {
    func goHome() {
        let baseTabbar = BaseTabbarController()
        baseTabbar.modalPresentationStyle = .fullScreen
        sView.delegate = nil
        present(baseTabbar, animated: false)
    }
}


