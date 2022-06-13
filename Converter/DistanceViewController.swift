//
//  DistanceViewController.swift
//  Converter
//
//  Created by anna on 19.05.2022.
//

import UIKit

class DistanceViewController: UIViewController {

    
    @IBOutlet weak var meterLabel: UILabel!
    @IBOutlet weak var mileLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 999
            slider.maximumTrackTintColor = .systemYellow
            slider.minimumTrackTintColor = .yellow
            slider.thumbTintColor = .systemGreen
        }
    }
    
    @IBAction func distanceConverter(_ sender: UISlider) {
        let kmeter = Int(round(sender.value))
        meterLabel.text = "\(kmeter) km"
        let mile = Int(round(sender.value) / 1.609)
        mileLabel.text = "\(mile) mile"
    }
    
    @IBAction func backToMenu(_ sender: UIButton) {
    }
    
}
