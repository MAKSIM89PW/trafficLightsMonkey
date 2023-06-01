//
//  SvetoforSectionView.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 01.06.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = frame.size.width / 2
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .clear
    }
}
