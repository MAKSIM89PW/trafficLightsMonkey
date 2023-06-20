//
//  SvetoforView.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 20.06.2023.
//

import UIKit
import SnapKit

class SvetoforView: UIView {
    
    //вьюхи светофора
    private var firstSectionView = SvetoforSectionView(colorLight: .red)
    private var secondSectionView = SvetoforSectionView(colorLight: .orange)
    private var thirdSectionView = SvetoforSectionView(colorLight: .green)
    
    private let stackView = UIStackView(frame: .zero)

    init() {
        super.init(frame: .zero)
        
        configureStackView()
        setStartState()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Pablic
    
    func switchMode() {
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
    
    //MARK: - Private
    
    private func configureStackView() {
        addSubview(stackView)
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(firstSectionView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        firstSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        secondSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }

        thirdSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setStartState() {
        firstSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
    }
}
