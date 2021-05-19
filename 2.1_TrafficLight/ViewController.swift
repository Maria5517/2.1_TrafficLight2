//
//  ViewController.swift
//  2.1_TrafficLight
//
//  Created by Maria Masljonok on 19.05.2021.
//

import UIKit

enum CurrentLight {
    case red,
         yellow,
         green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    
    @IBOutlet var yellowLight: UIView!
    
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var actionButton: UIButton!
    
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 63
        yellowLight.layer.cornerRadius = 63
        greenLight.layer.cornerRadius = 63
        
        actionButton.layer.cornerRadius = 10
        
    }
    

    @IBAction func turnOnTrafficLight() {
        if actionButton.currentTitle == "START" {
            actionButton.setTitle("NEXT", for: .normal)
    }
   
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
}

