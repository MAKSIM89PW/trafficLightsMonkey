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
    @IBOutlet weak var firstSectionView: SvetoforSectionView!
    
    @IBOutlet weak var secondSectionView: SvetoforSectionView!
    
    @IBOutlet weak var thirdSectionView: SvetoforSectionView!
    
    //кнопка
    @IBOutlet weak var turnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // логика кнопки
    @IBAction func turnButtonAction(_ sender: Any) {
        if firstSectionView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear && thirdSectionView.backgroundColor == .clear {
            firstSectionView.backgroundColor = .red
        } else if firstSectionView.backgroundColor == .red{
            firstSectionView.backgroundColor = .clear
            secondSectionView.backgroundColor = .orange
        } else if secondSectionView.backgroundColor == .orange {
            secondSectionView.backgroundColor = .clear
            thirdSectionView.backgroundColor = .green
        } else if thirdSectionView.backgroundColor == .green {
            thirdSectionView.backgroundColor = .clear
        }
    }
}

