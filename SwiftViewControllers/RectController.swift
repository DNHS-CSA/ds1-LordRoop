//
//  RectController.swift
//  SwiftUIProject
//
//  Created by Vij, Jagroop on 3/12/20.
//  Copyright © 2020 Vij, Jagroop. All rights reserved.
//

import UIKit
class RectController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var perimeter: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        side1.text = "0.0"
        side2.text = "0.0"
        area.text = "0.0"
        perimeter.text = "0.0"
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let s1 = Float(side1.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(side2.text!)

        // Perimeter Calculation
        let s3 = ( (s1! + s1!) + (s2! + s2!) )
    
        // Area Calculation
        let s4 = ( (s1! * s2!) )


        // Set calculation to screen
        area.text = String(s4)
        print("Pyth  \(area.text!)")
        
        perimeter.text = String(s3)
        print("Pyth  \(perimeter.text!)")
    
    }
}
