//
//  TempViewController.swift
//  Converter
//
//  Created by anna on 19.05.2022.
//

import UIKit

class TempViewController: UIViewController {
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahrinheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 233
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .orange
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func tempConverter(_ sender: UISlider) {
        let celsTemp = Int(round(sender.value))
        celciusLabel.text = "\(celsTemp)ºC"
        let fahrTemp = Int(round(sender.value) * 9 / 5) + 32
        fahrinheitLabel.text = "\(fahrTemp)ºF"
    }
    
    
    @IBAction func backToMenu(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
