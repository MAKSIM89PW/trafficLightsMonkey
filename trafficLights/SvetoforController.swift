//
//  ViewController.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 28.05.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {

    private let svetoforView = SvetoforView()
    //кнопка
    @IBOutlet weak var turnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurSvetoforView()
    }
    
    //MARK: - Actions
    
    // логика кнопки
    @IBAction func turnButtonAction(_ sender: Any) {
        svetoforView.switchMode()
    }
    //MARK: - Priate
    
    private func configurSvetoforView() {
        view.addSubview(svetoforView)
        
        svetoforView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
        }
    }
    
}

