//
//  ConverterLogic.swift
//  Project 6
//
//  Created by Julien on 2/12/24.
//

import Foundation

struct ConverterLogic {
    
    let francConvert: Float = 0.88
    let ausConvert: Float = 1.53
    let cadConvert: Float = 1.35
    let euroConvert: Float = 0.93
    
    var francSwitch = true
    var ausSwitch = true
    var cadSwitch = true
    var euroSwitch = true
    var usdAmount = 0
    
    mutating func setFrancSwitch(_ switchValue: Bool) {
        francSwitch = switchValue
    }
    
    mutating func setAusSwitch(_ switchValue: Bool) {
        ausSwitch = switchValue
    }
    
    mutating func setCadSwitch(_ switchValue: Bool) {
        cadSwitch = switchValue
    }
    
    mutating func setEuroSwitch(_ switchValue: Bool) {
        euroSwitch = switchValue
    }
    
    mutating func setUSD(_ usdValue: String) -> String {
        if usdValue != "" && usdValue.range(of: "^[0-9]*$", options: .regularExpression) != nil {
            usdAmount = Int(usdValue)!
            return ""
        } else {
            return "Error: Input must be an integer."
        }
    }
    
    func getUsdAmount() -> String {
        return String(usdAmount)
    }
    
    func convertTotals() -> [[String]] {
        var result: [[String]] = []
      
        if francSwitch {
            let francs = String(round((Float(usdAmount) * francConvert) * 100) / 100.0)
            result.append(["Franc:", francs])
        }
        if ausSwitch {
            let aus = String(round((Float(usdAmount) * ausConvert) * 100) / 100.0)
            result.append(["Australian Dollar:", aus])
        }
        if cadSwitch {
            let cad = String(round((Float(usdAmount) * cadConvert) * 100) / 100.0)
            result.append(["Canadian Dollar:", cad])
        }
        if euroSwitch {
            let euro = String(round((Float(usdAmount) * euroConvert) * 100) / 100.0)
            result.append(["Euro:", euro])
        }

        while result.count <= 3 {
            result.insert(["", ""], at: 0)
        }
        return result
    }
}
