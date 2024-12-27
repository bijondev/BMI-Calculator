//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bijon Krishna Bairagi on 12/27/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain{
    
    var bmi:Float = 0.0
    mutating func calculateBMI(height: Double, weight: Double) -> Double{
        bmi = weight / (height * height)
        return bmi
    }
    
    func getBMIValue()->String{
        let bmito1dp = String(format: "%.1f", bmi)
        return bmito1dp
    }
}
