//
//  ConvertedAmountView.swift
//  Project 6
//
//  Created by Julien on 2/12/24.
//

import UIKit

class ConvertedAmountView: UIViewController {

    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var francLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var canLabel: UILabel!
    @IBOutlet weak var ausLabel: UILabel!
    @IBOutlet weak var euroAmountLabel: UILabel!
    @IBOutlet weak var canAmountLabel: UILabel!
    @IBOutlet weak var ausAmountLabel: UILabel!
    @IBOutlet weak var francAmountLabel: UILabel!
    
    var usdAmount = ""
    var otherAmounts: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usdLabel.text = "$\(usdAmount)"
        francLabel.text = otherAmounts[0][0]
        francAmountLabel.text = otherAmounts[0][1]
        ausLabel.text = otherAmounts[1][0]
        ausAmountLabel.text = otherAmounts[1][1]
        canLabel.text = otherAmounts[2][0]
        canAmountLabel.text = otherAmounts[2][1]
        euroLabel.text = otherAmounts[3][0]
        euroAmountLabel.text = otherAmounts[3][1]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
