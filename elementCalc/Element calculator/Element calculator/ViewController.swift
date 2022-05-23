//
//  ViewController.swift
//  Element calculator
//
//  Created by Dylan Ramos on 4/8/22.
//  Copyright © 2022 Dylan Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let input = ["orange"]
            
        var output = [String]()

        func colorsRequired(color: String) -> [String] {
            if color == "purple" {
                return ["red", "blue"]
            } else if color == "orange" {
                return ["red", "yellow"]
            } else if color == "green" {
                return ["blue", "yellow"]
            } else {
                return ["Unexpected color."]
            }
        } //End of function
        
        
            
        for color in input {
            
            output = output + (colorsRequired(color: color))
        }
             
        
        label.text = "The required colors are: " + (Array(Set(output))).description
        
    }
    
   
    
    
    
    
}
