//
//  ViewController.swift
//  hw7Adina
//
//  Created by my macbook on 27/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
   let homeW1 = UIButton()
   let homeW2 = UIButton()
   let homeW3 = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeW1.backgroundColor = .blue
        homeW2.backgroundColor = .purple
        homeW3.backgroundColor = .red
        
        homeW1.setTitle("Home Work - 1", for: .normal)
        homeW2.setTitle("Home Work - 2", for: .normal)
        homeW3.setTitle("Home Work - 3", for: .normal)
        
        view.addSubview(homeW1)
        homeW1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(15)
            make.centerX.equalToSuperview()
        }
        view.addSubview(homeW2)
        homeW2.snp.makeConstraints { make in
            make.top.equalTo(homeW1.snp.bottom).offset(100)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(15)
            make.centerX.equalToSuperview()
        }
        view.addSubview(homeW3)
        homeW3.snp.makeConstraints { make in
            make.top.equalTo(homeW2.snp.bottom).offset(100)
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalToSuperview().dividedBy(15)
            make.centerX.equalToSuperview()
        }
        
        homeW1.addTarget(nil, action: #selector(gotoVC), for: .touchUpInside)
        homeW2.addTarget(nil, action: #selector(gotoVC2), for: .touchUpInside)
        homeW3.addTarget(nil, action: #selector(gotoVC3), for: .touchUpInside)

    }


    @objc func gotoVC(){
        present(twoFflagsVC(), animated: true)
    }
    
    @objc func gotoVC2(){
        present(threeFflagsVC(), animated: true)
    }
    
    @objc func gotoVC3(){
        present(SignUpVC(), animated: true)
    }
}

