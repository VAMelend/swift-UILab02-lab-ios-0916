//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets
    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var bar1: UISegmentedControl!
    
    @IBOutlet weak var bar2: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.paintColorName = "red"
        
        print (mixColors(withFirst: "red", second: "yellow"))
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        if (first == "red") && (second == "red"){
            return "red"
        }
        else if (first == "red") && (second == "yellow") {
            return "orange"
        }
        else if (first == "red") && (second == "blue") {
            return "purple"
        }
        else if (first == "yellow") && (second == "red") {
            return "orange"
        }
        else if (first == "yellow") && (second == "yellow"){
            return "yellow"
        }
        else if (first == "yellow") && (second == "blue"){
            return "green"
        }
        else if (first == "blue") && (second == "red"){
            return "purple"
        }
        else if (first == "blue") && (second == "yellow"){
            return "green"
        }
        else if (first == "blue") && (second == "blue") {
            return "blue"
        }else {
            
            return "testing"
            
        }
        
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        var color1 = ""
        var color2 = ""
        
        switch bar1.selectedSegmentIndex{
        case 0:
            color1 = "red"
        case 1:
            color1 = "yellow"
        case 2:
            color1 = "blue"
        default:
            break
        }
        
        switch bar2.selectedSegmentIndex{
        case 0:
            color2 = "red"
        case 1:
            color2 = "yellow"
        case 2:
            color2 = "blue"
        default:
            break
        }
        
       print (color1)
        print (color2)
        print(mixColors(withFirst: color1, second: color2))
        
        
        
        // TODO: Mix each selected color and set the paint color to the mixed colo
        print (bar1.selectedSegmentIndex)
        print (bar2.selectedSegmentIndex)
        
        paintBucket.paintColorName = mixColors(withFirst: color1, second: color2)
    }
}

