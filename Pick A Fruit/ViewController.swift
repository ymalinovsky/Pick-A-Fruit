//
//  ViewController.swift
//  Pick A Fruit
//
//  Created by Yan Malinovsky on 26.10.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    var fruits = ["Apples", "Oranges", "Lemons", "Limes", "Blueberries"]

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UIPickerViewDelegate:
    //
    // returns the number of 'columns' to display.
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewDelegate:
    //
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    // UIPickerViewDelegate:
    //
    // returns title for the row.
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
} 

