//
//  ViewController.swift
//  Project 6
//
//  Created by Julien on 2/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    var converterLogic = ConverterLogic()
    var usdAmount = ""
    var otherAmounts: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func usdInput(_ sender: UITextField) {
        let errorText = converterLogic.setUSD(sender.text!)
        errorLabel.text = errorText
        if errorText != "" {
            convertButton.isEnabled = false
        } else {
            convertButton.isEnabled = true
        }
    }
    @IBAction func francSwitch(_ sender: UISwitch) {
        converterLogic.setFrancSwitch(sender.isOn)
    }
    @IBAction func ausSwitch(_ sender: UISwitch) {
        converterLogic.setAusSwitch(sender.isOn)
    }
    @IBAction func canSwitch(_ sender: UISwitch) {
        converterLogic.setCadSwitch(sender.isOn)
    }
    @IBAction func euroSwitch(_ sender: UISwitch) {
        converterLogic.setEuroSwitch(sender.isOn)
    }
    @IBAction func calculate(_ sender: UIButton) {
        otherAmounts = converterLogic.convertTotals()
        usdAmount = converterLogic.getUsdAmount()
        
        self.performSegue(withIdentifier: "toConvertedValues", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertedValues" {
            let navigation = segue.destination as! ConvertedAmountView
            navigation.usdAmount = usdAmount
            navigation.otherAmounts = otherAmounts
        }
    }
}

