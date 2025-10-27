//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Shamil Keheliya on 2025-10-27.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?

    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var bmiLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLable.text = bmi?.advice
        bmiLable.text = String(format: "%.1f", bmi?.value ?? 0.0)
        view.backgroundColor = bmi?.color
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickReclaculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
