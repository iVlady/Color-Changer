//
//  ViewController.swift
//  Color Changer
//
//  Created by Vlad Vinogrotskiy on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redTextLabel: UILabel!
    @IBOutlet weak var redSliderValue: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenTextSlider: UILabel!
    @IBOutlet weak var greenSliderValue: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueTextLabel: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func colorTheLabel () {
        displayColorLabel.backgroundColor = UIColor (red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSlider() {
        colorTheLabel()
    }
    

}

