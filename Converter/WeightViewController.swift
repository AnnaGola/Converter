//
//  WeightViewController.swift
//  Converter
//
//  Created by anna on 19.05.2022.
//

import UIKit

class WeightViewController: UIViewController {

    
    @IBOutlet weak var kiloLabel: UILabel!
    @IBOutlet weak var ounceLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 999
            slider.thumbTintColor = .systemBlue
            slider.minimumTrackTintColor = .systemGray4
            slider.maximumTrackTintColor = .systemBlue
        }
    }
    
    @IBAction func weightConverter(_ sender: UISlider) {
        let kilo = Int(round(sender.value))
        kiloLabel.text = "\(kilo) gram"
        let ounce = Int(round((sender.value)) / 28.35)
        ounceLabel.text = "\(ounce) oz"
    }
    
    @IBAction func backToMenu(_ sender: UIButton) {
    }
    
}
