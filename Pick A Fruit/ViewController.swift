//
//  ViewController.swift
//  Pick A Fruit
//
//  Created by Yan Malinovsky on 26.10.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    var fruits = ["Make a choice", "Apples", "Oranges", "Lemons", "Limes", "Blueberries"]

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        imageView.image = UIImage(named: "fruits.jpg")
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

    // UIPickerViewDelegate:
    //
    // observe event - did select row
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch (fruits[row]) {
            case "Apples":
                imageView.image = UIImage(named: "apples.jpg")
                infoLabel.text = "Apples"
            case "Oranges":
                imageView.image = UIImage(named: "oranges.jpg")
                infoLabel.text = "Oranges"
            case "Lemons":
                imageView.image = UIImage(named: "lemons.jpg")
                infoLabel.text = "Lemons"
            case "Limes":
                imageView.image = UIImage(named: "limes.jpg")
                infoLabel.text = "Limes"
            case "Blueberries":
                imageView.image = UIImage(named: "blueberries.jpg")
                infoLabel.text = "Blueberries"
            default:
                imageView.image = UIImage(named: "fruits.jpg")
                infoLabel.text = "Please select a fruit."
        }
    }
}

