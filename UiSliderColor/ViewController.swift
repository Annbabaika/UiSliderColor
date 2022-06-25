//
//  ViewController.swift
//  UiSliderColor
//
//  Created by Anna Prilipkina on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupRedLabel()
        setupGreenLabel()
        setupBlueLabel()
    }

    @IBAction func redSliderAction() {
        redLabel.text = "\(redSlider.value)"
        colorView.backgroundColor = .red
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = "\(greenSlider.value)"
        colorView.backgroundColor = .green
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = "\(blueSlider.value)"
        colorView.backgroundColor = .blue
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(blueSlider.value))       }
    
    private func setupRedSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .white
        redSlider.thumbTintColor = .white
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .white
        greenSlider.thumbTintColor = .white
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .white
        blueSlider.thumbTintColor = .white
    }
    
    private func setupRedLabel () {
            redLabel.text = String(redSlider.value)
        }
    
    private func setupGreenLabel () {
        greenLabel.text = String(greenSlider.value)
    }
    
    private func setupBlueLabel () {
        blueLabel.text = String(blueSlider.value)
    }
}

