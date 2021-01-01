//
//  ViewController.swift
//  FramesAndBounds
//
//  Created by Vyacheslav on 1/1/21.
//  Copyright © 2021 Vyacheslav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var boundaryX: UILabel!
    
    @IBOutlet weak var frameX: UILabel!
    
    @IBOutlet weak var boundarySliderX: UISlider!
    
    @IBOutlet weak var frameSliderX: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boundarySliderX.value = Float(container.bounds.origin.x)
        frameSliderX.value = Float(container.frame.origin.x)
        
        updateValues()
    }
    
    @IBAction func boundarySliderChangedX(_ sender: Any) {
        container.bounds.origin.x = CGFloat(boundarySliderX.value)
        
        updateValues()
    }
    
    @IBAction func frameSliderChangedX(_ sender: Any) {
        container.frame.origin.x = CGFloat(frameSliderX.value)
        
        updateValues()
    }
    
    func updateValues() {
        boundaryX.text = "Boundary X = \(Int(container.bounds.origin.x))"
        frameX.text = "Frame X = \(Int(container.frame.origin.x))"
    }
}

