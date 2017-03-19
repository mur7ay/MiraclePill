//
//  ViewController.swift
//  MiraclePill
//
//  Created by shawn murray on 3/18/17.
//  Copyright © 2017 NoneYet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var successImageView: UIImageView!
    @IBOutlet weak var buyNowButton: UIButton!
    
    let states = ["Alaska", "Arkansas", "Maine", "Ohio", "Florida"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
        buyNowButton.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeTextField.isHidden = false
        buyNowButton.isHidden = false
    }
    
    @IBAction func buyNowBtn(_ sender: Any) {
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        addressLabel.isHidden = true
        addressTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextField.isHidden = true
        buyNowButton.isHidden = true
        successImageView.isHidden = false
    }
    

}

