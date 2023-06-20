//
//  ViewController.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 28.05.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {
    //вьюхи светофора
    var firstSectionView = SvetoforSectionView(colorLight: .red)
    var secondSectionView = SvetoforSectionView(colorLight: .orange)
    var thirdSectionView = SvetoforSectionView(colorLight: .green)
    
    let stackView = UIStackView(frame: .zero)
    //кнопка
    @IBOutlet weak var turnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(firstSectionView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        stackView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
        }
        
        firstSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        secondSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }

        thirdSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }

        
        firstSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
    }
    
    // логика кнопки
    @IBAction func turnButtonAction(_ sender: Any) {
        //если все выкл то вкл первую
        // если первая вкл то выкл 1 и вкл 2
        // если вторая вкл то выкл 2 вкл 3 .........
        
        if firstSectionView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
            firstSectionView.turnOn()
        } else if firstSectionView.isOn() {
            firstSectionView.turnOff()
            secondSectionView.turnOn()
        } else if secondSectionView.isOn() {
            secondSectionView.turnOff()
            thirdSectionView.turnOn()
        } else if  thirdSectionView.isOn() {
            thirdSectionView.turnOff()
        }
    }
}

