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
        colorView.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        setupColor()
        setupRedLabel()
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
    }
    
    @IBAction func greenSliderAction() {
        setupColor()
        setupGreenLabel()
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
    }
    
    @IBAction func blueSliderAction() {
        setupColor()
        setupBlueLabel()
        colorView.backgroundColor = colorView.backgroundColor?.withAlphaComponent(CGFloat(blueSlider.value))
    }
    
    private func setupColor () {
        colorView.backgroundColor = UIColor(red: (CGFloat(redSlider.value)), green: (CGFloat(greenSlider.value)), blue: (CGFloat(blueSlider.value)), alpha: 1)
    }
    
    private func setupRedSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSlider.thumbTintColor = .white
    }
    
    private func setupGreenSlider() {
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSlider.thumbTintColor = .white
    }
    
    private func setupBlueSlider() {
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.thumbTintColor = .white
    }
    
    private func setupRedLabel () {
        redLabel.text = String(redSlider.value)
        redLabel.text = "red: \(round(redSlider.value * 100) / 100)"
    }
    
    private func setupGreenLabel () {
        greenLabel.text = String(greenSlider.value)
        greenLabel.text = "green: \(round(greenSlider.value * 100) / 100)"
    }
    
    private func setupBlueLabel () {
        blueLabel.text = String(blueSlider.value)
        blueLabel.text = "blue: \(round(blueSlider.value * 100) / 100)"
    }
}

