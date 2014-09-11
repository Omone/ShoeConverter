//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Alessandro Castrucci on 11/09/14.
//  Copyright (c) 2014 d-Mobilelab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var mensShoeSizeTextField: UITextField!
	
	
	@IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
	
	@IBOutlet weak var womensShoeSizeTextField: UITextField!
	@IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func convertButtonPressed(sender: UIButton) {
		let convertedNumber = mensShoeSizeTextField.text.toInt()!
		let conversionConstant = 30
		mensConvertedShoeSizeLabel.text = "\(convertedNumber + conversionConstant) in European Shoe Size"
		
		mensConvertedShoeSizeLabel.hidden = false
	}
	
	@IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
		let convertedNumber = (womensShoeSizeTextField.text as NSString).doubleValue
		let conversionConstant = 30.5
		womensConvertedShoeSizeLabel.hidden = false
		
		womensConvertedShoeSizeLabel.text = "\(convertedNumber + conversionConstant) in European Shoe Size"
	}
}

