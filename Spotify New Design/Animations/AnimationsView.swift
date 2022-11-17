//
//  AnimationsView.swift
//  Spotify New Design
//
//  Created by Burak AKCAN on 15.11.2022.
//

import UIKit
import Lottie

protocol DidFinishAnimation: AnyObject{
    func goHome()
}

final class AnimationsView: UIView {
    
    weak var delegate: DidFinishAnimation?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = #colorLiteral(red: 0.0003598765179, green: 0.5511925817, blue: 0.01931053773, alpha: 1)
        setAnimation()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("oldu")
    }
    
    private func setAnimation() {
        let lottieView = Lottie.AnimationView(name: "music")
        lottieView.contentMode = .scaleAspectFit
        lottieView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(lottieView)
        lottieView.backgroundColor = #colorLiteral(red: 0.0003598765179, green: 0.5511925817, blue: 0.01931053773, alpha: 1)
        lottieView.animationSpeed = 10
        lottieView.fillSuperview()
        lottieView.constrainWidth(constant: .sWdith)
        lottieView.constrainHeight(constant: .sWdith)
        lottieView.center = self.center
        
        lottieView.play(fromProgress: 0, toProgress: 1, loopMode: .playOnce) { [weak self] (finished) in
            
            if finished {
                lottieView.animation = nil
                lottieView.removeFromSuperview()
                self?.delegate?.goHome()
                
            }else {
               print("Not finish")
            }
        }
       
    }
    
}
