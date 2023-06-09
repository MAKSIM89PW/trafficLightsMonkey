//
//  SvetoforSectionView.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 01.06.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    private var colorLight: UIColor?
    
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupView()
    }
    
    // MARK: - Public
    
    /// Здесь назначается цвет секции при оздании вью через сториборд
    func setColorLight(_ colorLight: UIColor) {
        self.colorLight = colorLight
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
    }
    
    // MARK: - Pivate
    
    func setupView() {
        self.layer.cornerRadius = frame.size.width / 2
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .clear
    }
    
}
