//
//  ViewController.swift
//  GuestNumBer_simple
//
//  Created by zoeli on 2020/5/15.
//  Copyright © 2020 zoeli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var sendNumberButton: UIButton!
    
    
    @IBOutlet weak var guestNumberTextField: UITextField!
    
    
    var ansNumber = Int.random(in: 1...100)
    
    var guestCount = 5
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //設定元件樣式
        self.questionLabel.textColor = UIColor(red: 1, green: 1, blue: 216/255.0, alpha: 1)
        
        self.resultLabel.textColor = UIColor(red: 1, green: 77/255.0, blue: 87/255.0, alpha: 1)
        
        self.resetButton.layer.borderWidth = 3
        
        self.resetButton.layer.borderColor = UIColor.orange.cgColor
        
        self.resetButton.layer.cornerRadius = self.resetButton.frame.height / 2
        
        self.sendNumberButton.layer.borderColor = UIColor.blue.cgColor
        
        self.sendNumberButton.layer.borderWidth = 3
        
        self.sendNumberButton.titleLabel?.textColor = UIColor.blue
        
    }
    
    
    
    
    // MARK: - IBAction
    @IBAction func didTapResetButton(_ sender: UIButton) {
        
        self.resultLabel.text = ""
        
        self.ansNumber = Int.random(in: 0...100)
        
        self.guestNumberTextField.text = ""
        
    }
    
    @IBAction func didTapSendNumberButton(_ sender: Any) {
        
        self.view.endEditing(true)
        
        var guestNum = Int(self.guestNumberTextField.text!)
        
        if guestNum == ansNumber {
            
            self.resultLabel.text = "猜對了!!!!"
            
        }else if guestNum! > ansNumber {
            
            self.resultLabel.text = "太多了!!!會變胖...."
            
        }else if guestNum! < ansNumber {
            
            self.resultLabel.text = "太少了!!! 維尼正朝著大胃王之路前進～"
        }
        
    }
    
}

