//
//  SplashViewController.swift
//  BaseProject
//
//  Created by taehy.k on 2021/08/14.
//

import UIKit

import Lottie
import SnapKit
import Then

class SplashViewController: BaseViewController {
    // MARK: - Properties
    lazy var splashLogoImage = LottieView(
        named: "animated-logo",
        frame: CGRect(x: 0, y: 0, width: 99, height: 99)
    )
    
    lazy var textLogoImageView = UIImageView().then {
        $0.frame = view.bounds
        $0.image = UIImage(named: "text-logo")
        $0.contentMode = .scaleAspectFit
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupConstraints()
        splashLogoImage.startAnimation()
    }
    
    // MARK: - Set up
    private func setup() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = UIColor(red: 107/255.0, green: 143/255.0, blue: 249/255.0, alpha: 1.0)
    }
    
    internal override func setupConstraints() {
        view.addSubview(splashLogoImage)
        splashLogoImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(241)
            $0.centerX.equalToSuperview()
            $0.width.height.equalTo(99)
        }
        
        view.addSubview(textLogoImageView)
        textLogoImageView.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-65)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(99)
            $0.height.equalTo(14)
        }
    }
}
