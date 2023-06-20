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
    
    //кнопка
    @IBOutlet weak var turnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(firstSectionView)
        view.addSubview(secondSectionView)
        view.addSubview(thirdSectionView)
        
        firstSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalTo(100)
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

