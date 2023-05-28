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
        
        redView.layer.cornerRadius = 100
        redView.layer.borderWidth = 2
        redView.layer.borderColor = UIColor.black.cgColor
        
        orangeView.layer.cornerRadius = 100
        orangeView.layer.borderWidth = 2
        orangeView.layer.borderColor = UIColor.black.cgColor
        
        greenView.layer.cornerRadius = 100
        greenView.layer.borderWidth = 2
        greenView.layer.borderColor = UIColor.black.cgColor
        
        redView.backgroundColor = .clear
        orangeView.backgroundColor = .clear
        greenView.backgroundColor = .clear
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
    
    
//
//     //экран БУДЕТ показан
//    override func viewWillApрear(_ animated: Bool) {
//        super.viewWillApрear(animated)
//        print(" БУДЕТ")
//    }
//
//    //Экран БЫЛ показан
//    override func viewDidApрear(_ animated: Bool) {
//        super.viewDidApрear(animated)
//        // Do any additional setup after loading the view.
//    }
//
//// экран БУДЕТ скрыт
//    override func viewWillDisapрear(_ animated: Bool) {
//        super.viewWillDisapрear(animated)
//        // Do any additional setup after loading the view.
//    }
//
//    // экран БЫЛ скрыт
//        override func viewDidDisapрear(_ animated: Bool) {
//            super.viewDidDisapрear(animated)
//            // Do any additional setup after loading the view.
//        }
    
    

}

