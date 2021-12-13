//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Patrick Messenger on 11/3/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {

        let bmiDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimalPlace

    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight! Eat more food!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Healthy weight! Keep it up!", color: UIColor.green)
        }   else {
            bmi = BMI(value: bmiValue, advice: "Overweight, Take action now!", color: UIColor.red)
        }
    }
    

}
