//
//  SignUpVC.swift
//  hw7Adina
//
//  Created by my macbook on 2/2/22.
//

import Foundation
import SnapKit

class SignUpVC: UIViewController {
    let logFile = UITextField()
    let passwordFile = UITextField()
    let click = UIButton()
    let textLabel = UILabel()
    let imageSign = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        logFile.placeholder = "login, email"
        logFile.backgroundColor = .white
        passwordFile.placeholder = "password"
        passwordFile.backgroundColor = .white
        click.setTitle("Войти", for: .normal)
        imageSign.image = .checkmark
        textLabel.text = "Вход"
        textLabel.textColor = .white
        
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.centerX.equalToSuperview()
        }
        view.addSubview(imageSign)
        imageSign.snp.makeConstraints { make in
            make.top.equalTo(textLabel.snp.bottom).offset(30)
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(4)
            make.centerX.equalToSuperview()
        }
        view.addSubview(logFile)
        logFile.snp.makeConstraints { make in
            make.top.equalTo(imageSign.snp.bottom).offset(50)
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(20)
            make.centerX.equalToSuperview()
        }
        view.addSubview(passwordFile)
        passwordFile.snp.makeConstraints { make in
            make.top.equalTo(logFile.snp.bottom).offset(20)
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(20)
            make.centerX.equalToSuperview()
        }
        view.addSubview(click)
        click.snp.makeConstraints { make in
            make.top.equalTo(passwordFile.snp.bottom).offset(30)
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(30)
            make.centerX.equalToSuperview()
        }
    }
}
