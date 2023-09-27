//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        heightLabel.text = String(format: "%0.2f"+"m",HeightSlider.value) //slider değerini kullanıcıya yanst
    }
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        weightLabel.text = String(format: "%0.0f"+"Kg", weightSlider.value)
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        let height = HeightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight : weight)
        performSegue(withIdentifier: "goToSecondVC", sender: nil)
    }
    // Resulview ekranına hazırlık işlemi
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let secondVC = segue.destination as! ResultViewController
            secondVC.bmiValue = calculatorBrain.getBMIValue()
            secondVC.advice = calculatorBrain.getAdvice()
            secondVC.color = calculatorBrain.getColor()
            
        }
    }
    
    
}

