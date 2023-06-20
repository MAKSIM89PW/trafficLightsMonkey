//
//  SvetoforSectionView.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 01.06.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    var colorLight: UIColor?
    
    init(colorLight: UIColor) {
        super.init(frame: .zero)
        
        self.colorLight = colorLight
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = frame.size.width / 2
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .clear
    }
    
    //включение
    func turnOn() {
        backgroundColor = colorLight
    }
    
    //выключение
    func turnOff() {
        backgroundColor = .clear
    }
    
    //    получение состояни секции на вкл
    func isOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
    }
    
    func isOn() -> Bool {
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
        
     //   return backgroundColor != .clear
    }
    
    
}
