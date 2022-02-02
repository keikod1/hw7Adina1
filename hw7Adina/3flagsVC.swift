//
//  3flagsVC.swift
//  hw7Adina
//
//  Created by my macbook on 1/2/22.
//

import Foundation
import SnapKit

class threeFflagsVC: UIViewController {
    let russiaFlags = UIStackView()
    let franceFlags = UIStackView()
    let inkFlags = UIStackView()
    let britainFlags = UIView()
    let britanView1 = UIView()
    let britanView2 = UIView()
    let britanView3 = UIView()
    let britanView4 = UIView()
    let britanView5 = UIView()
    let britanView6 = UIView()
    let britanView7 = UIView()
    let britanView8 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        russiaFlags.axis = .vertical
        russiaFlags.distribution = .fillEqually
        
        view.addSubview(russiaFlags)
        russiaFlags.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
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
            make.top.equalTo(russiaFlags.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
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
        
        inkFlags.axis = .vertical
        inkFlags.distribution = .fillEqually
        view.addSubview(inkFlags)
        inkFlags.snp.makeConstraints { make in
            make.top.equalTo(franceFlags.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        let viewInk1 = UIView()
        let viewInk2 = UIView()
        let viewInk3 = UIView()
        let viewInk4 = UIView()
        let viewInk5 = UIView()
        let viewInk6 = UIView()
        let viewInk7 = UIView()
        
        viewInk1.backgroundColor = .red
        viewInk2.backgroundColor = .orange
        viewInk3.backgroundColor = .yellow
        viewInk4.backgroundColor = .green
        viewInk5.backgroundColor = .cyan
        viewInk6.backgroundColor = .blue
        viewInk7.backgroundColor = .systemIndigo
        
        inkFlags.addArrangedSubview(viewInk1)
        inkFlags.addArrangedSubview(viewInk2)
        inkFlags.addArrangedSubview(viewInk3)
        inkFlags.addArrangedSubview(viewInk4)
        inkFlags.addArrangedSubview(viewInk5)
        inkFlags.addArrangedSubview(viewInk6)
        inkFlags.addArrangedSubview(viewInk7)
        
        britainFlags.backgroundColor = .blue
        view.addSubview(britainFlags)
        britainFlags.snp.makeConstraints { make in
            make.top.equalTo(inkFlags.snp.bottom).offset(8)
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        

        
        britanView1.backgroundColor = .white
        britanView2.backgroundColor = .white
        britanView3.backgroundColor = .red
        britanView4.backgroundColor = .red
        britanView5.backgroundColor = .white
        britanView6.backgroundColor = .white
        britanView7.backgroundColor = .red
        britanView8.backgroundColor = .red
        
    
                
        view.addSubview(britanView5)
        britanView5.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(21)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlags.snp.bottom).offset(70)
            make.centerX.equalToSuperview()
                }
        view.addSubview(britanView8)
        britanView8.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(28)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlags.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
                }
        
        view.addSubview(britanView1)
        britanView1.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(21)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlags.snp.bottom).offset(70)
            make.centerX.equalToSuperview()
                }
        view.addSubview(britanView4)
        britanView4.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(28)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlags.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
                }
        view.addSubview(britanView2)
        britanView2.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalTo(self.view.frame.width / 8)
            make.top.equalTo(inkFlags.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
                }
        view.addSubview(britanView6)
        britanView6.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(21)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlags.snp.bottom).offset(70)
            make.centerX.equalToSuperview()
                }
        view.addSubview(britanView7)
        britanView7.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(28)
            make.width.equalToSuperview().multipliedBy(1.5)
            make.top.equalTo(inkFlags.snp.bottom).offset(75)
            make.centerX.equalToSuperview()
                }
        view.addSubview(britanView3)
        britanView3.snp.makeConstraints { make in
            make.height.equalToSuperview().dividedBy(5)
            make.width.equalTo(self.view.frame.width / 12)
            make.top.equalTo(inkFlags.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
                }
        rotateFunc()
        
    }
        
        func rotateFunc(){
            UIView.animate(withDuration: 0.0, animations: {
                self.britanView5.transform = CGAffineTransform(rotationAngle: (17 * .pi) / 180.0)
                })
            UIView.animate(withDuration: 0.0, animations: {
                self.britanView8.transform = CGAffineTransform(rotationAngle: (17 * .pi) / 180.0)
                })
            UIView.animate(withDuration: 0.0, animations: {
                self.britanView1.transform = CGAffineTransform(rotationAngle: (163 * .pi) / 180.0)
            })
            UIView.animate(withDuration: 0.0, animations: {
                self.britanView4.transform = CGAffineTransform(rotationAngle: (163 * .pi) / 180.0)
            })
           
           

        // Do any additional setup after loading the view.
    }
}
