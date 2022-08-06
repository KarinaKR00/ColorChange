//
//  ViewController.swift
//  ColorChange
//
//  Created by Карина on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorChangeView: UIView!
    
    @IBOutlet var redNumberLabel: UILabel!
    @IBOutlet var greenNumberLabel: UILabel!
    @IBOutlet var blueNumberLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorRadius()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        setupRedNumberLabel()
        
    }

    @IBAction func actionRedSlider() {
        redNumberLabel.text = String(format: "%.2f", redSlider.value)
        colorChangeView.backgroundColor = UIColor(
            red: (CGFloat(redSlider.value)),
                  green: (CGFloat(greenSlider.value)),
                          blue: (CGFloat(blueSlider.value)),
            alpha: (CGFloat(redSlider.value))
                                 )
    }
    
    @IBAction func actionGreenSlider() {
        greenNumberLabel.text = String(format: "%.2f", greenSlider.value)
        colorChangeView.backgroundColor = UIColor(
            red: (CGFloat(redSlider.value)),
                  green: (CGFloat(greenSlider.value)),
                          blue: (CGFloat(blueSlider.value)),
            alpha: (CGFloat(greenSlider.value))
                                 )
    }
    
    @IBAction func actionBlueSlider() {
        blueNumberLabel.text = String(format: "%.2f", blueSlider.value)
        colorChangeView.backgroundColor = UIColor(
            red: (CGFloat(redSlider.value)),
                  green: (CGFloat(greenSlider.value)),
                          blue: (CGFloat(blueSlider.value)),
            alpha: (CGFloat(blueSlider.value))
                                 )
    }


// MARK: - Private Methods
    
    private func changeColorRadius() {
        colorChangeView.layer.cornerRadius = 15
    }
    
    
    // MARK: - Change Label
    
    private func setupRedNumberLabel() {
        redNumberLabel.text = String(redSlider.value)
    }
    

    
    // MARK: - Change Slider
    
    private func setupRedSlider() {
    redSlider.value = 0
    redSlider.minimumValue = 0
    redSlider.maximumValue = 1
        
    redSlider.minimumTrackTintColor = .red
}
    private func setupGreenSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
}
