//
//  ViewController.swift
//  UltraBoost
//
//  Created by Danny Luong on 6/21/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // Reference to the picker view that will point to different states
    @IBOutlet weak var statePicker: UIPickerView!
    
    // Reference to the button that activates the state picker
    @IBOutlet weak var statePickerBtn: UIButton!
    
    // Reference to country UI
    @IBOutlet weak var countryTitle: UILabel!
    @IBOutlet weak var countryPlaceholder: UITextField!
    
    // Reference to zip code UI
    @IBOutlet weak var zipCodeTitle: UILabel!
    @IBOutlet weak var zipCodePlaceholder: UITextField!
    
    // Reference to the buy now button
    @IBOutlet weak var buyNowBtn: UIButton!
    
    // Reference to the success image
    @IBOutlet weak var successImage: UIImageView!
    
    // An array of all the states
    let states = ["Alaska",
                  "Alabama",
                  "Arkansas",
                  "American Samoa",
                  "Arizona",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "District of Columbia",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Guam",
                  "Hawaii",
                  "Iowa",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Massachusetts",
                  "Maryland",
                  "Maine",
                  "Michigan",
                  "Minnesota",
                  "Missouri",
                  "Mississippi",
                  "Montana",
                  "North Carolina",
                  "North Dakota",
                  "Nebraska",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "Nevada",
                  "New York",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Puerto Rico",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Virginia",
                  "Virgin Islands",
                  "Vermont",
                  "Washington",
                  "Wisconsin",
                  "West Virginia",
                  "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Handles state button functionality, state picker visible
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryTitle.isHidden = true
        zipCodeTitle.isHidden = true
        countryPlaceholder.isHidden = true
        zipCodePlaceholder.isHidden = true
    }
    
    // Determines the number of coloumns we want
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Number of rows in the component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // Title of each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // Sets the title of the button as the selected state
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTitle.isHidden = false
        zipCodeTitle.isHidden = false
        countryPlaceholder.isHidden = false
        zipCodePlaceholder.isHidden = false
    }

    @IBAction func buyNowBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successImage.isHidden = false
    }
    
}

