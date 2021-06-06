//
//  ViewController.swift
//  Color Changer
//
//  Created by Vlad Vinogrotskiy on 23.05.2021.
//

import UIKit

//protocol passBackgroundColor {
//    func newColor () {
//
//    }
//}

class ViewController: UIViewController {
    
    @IBOutlet weak var displayColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redSliderValue: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenSliderValue: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueSliderValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }

    func colorTheLabel () {
        displayColorLabel.backgroundColor = UIColor (red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSlider() {
        colorTheLabel()
    
    }
    
    @IBAction func redSliderValueColor() {
        redSliderValue.text = String (format: "%.2f", redSlider.value)
    }
    @IBAction func greenSliderValueColor() {
        greenSliderValue.text = String (format: "%.2f", greenSlider.value)
    }
    @IBAction func blueSliderValueColor() {
        blueSliderValue.text = String (format: "%.2f", blueSlider.value)
    }
}

