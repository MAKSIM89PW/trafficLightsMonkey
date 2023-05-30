//
//  ViewController.swift
//  trafficLights
//
//  Created by Максим Нурутдинов on 28.05.2023.
//

import UIKit

class ViewController: UIViewController {
    //вьюхи светофора
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
//кнопка
    @IBOutlet weak var turnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView(view: redView)
        configureView(view: orangeView)
        configureView(view: greenView)
    }
    
    func configureView(view: UIView) {
        view.layer.cornerRadius = 100
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = .clear
    }
    
    // логика кнопки
    @IBAction func turnButtonAction(_ sender: Any) {
        if redView.backgroundColor == .clear && orangeView.backgroundColor == .clear && greenView.backgroundColor == .clear {
            redView.backgroundColor = .red
        } else if redView.backgroundColor == .red{
            redView.backgroundColor = .clear
            orangeView.backgroundColor = .orange
        } else if orangeView.backgroundColor == .orange {
            orangeView.backgroundColor = .clear
            greenView.backgroundColor = .green
        } else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .clear
        }
    }
}

