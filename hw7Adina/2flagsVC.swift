//
//  ViewController.swift
//  hw7Adina
//
//  Created by my macbook on 27/1/22.
//

import UIKit
import SnapKit

class twoFflagsVC: UIViewController {
    let russiaFlags = UIStackView()
    let franceFlags = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        russiaFlags.axis = .vertical
        russiaFlags.distribution = .fillEqually
        
        view.addSubview(russiaFlags)
        russiaFlags.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(4)
        }
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        
        view1.backgroundColor = .white
        view2.backgroundColor = .blue
        view3.backgroundColor = .red
        
        russiaFlags.addArrangedSubview(view1)
        russiaFlags.addArrangedSubview(view2)
        russiaFlags.addArrangedSubview(view3)
        
        franceFlags.axis = .horizontal
        franceFlags.distribution = .fillEqually
        view.addSubview(franceFlags)
        franceFlags.snp.makeConstraints { make in
            make.top.equalTo(russiaFlags.snp.bottom).offset(100)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(4)
        }
        let viewFrance1 = UIView()
        let viewFrance2 = UIView()
        let viewFrance3 = UIView()
        
        viewFrance1.backgroundColor = .blue
        viewFrance2.backgroundColor = .white
        viewFrance3.backgroundColor = .red
        
        franceFlags.addArrangedSubview(viewFrance1)
        franceFlags.addArrangedSubview(viewFrance2)
        franceFlags.addArrangedSubview(viewFrance3)
        
        // Do any additional setup after loading the view.
    }


}

