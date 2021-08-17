//
//  LottieView.swift
//  BaseProject
//
//  Created by taehy.k on 2021/08/15.
//

import UIKit

import Lottie

class LottieView: UIView {
    
    var animationView = AnimationView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(named: String, frame: CGRect) {
        self.init(frame: .zero)
        animationView.frame = frame
        animationView.animation = Animation.named(named)
        animationView.contentMode = .scaleAspectFit
        animationView.isHidden = true
        animationView.stop()
        addSubview(animationView)
    }
    
    public func startAnimation() {
        animationView.isHidden = false
        animationView.play()
    }
}
