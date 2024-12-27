//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bijon Krishna Bairagi on 12/27/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain{
    
    var bmi:BMI?
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) )
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) )
        }
        
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    func getBMIValue()->String{
        let bmito1dp = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmito1dp
    }
}
