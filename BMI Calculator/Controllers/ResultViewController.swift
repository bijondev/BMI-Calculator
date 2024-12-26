//
//  Untitled.swift
//  BMI Calculator
//
//  Created by Bijon Krishna Bairagi on 12/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        
        label.text = "Your BMI is : \(bmiValue)"
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        
        view.addSubview(label)
    }
}
