//
//  SampleViewController.swift
//  BaseProject
//
//  Created by taehy.k on 2021/07/31.
//

import UIKit

class SampleViewController: BaseViewController {
    
    var sampleView = LottieView(
        named: "animated-logo",
        frame: CGRect(x: 0, y: 0, width: 99, height: 99)
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleView.startAnimation()
    }
    
    override func setupUI() {
        view.backgroundColor = .blue
        navigationController?.navigationBar.isHidden = true
        splashStub()
    }
    
    private func splashStub() {
        view.addSubview(sampleView)
        sampleView.snp.makeConstraints {
            $0.width.height.equalTo(99)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(241)
        }
    }
}
