//
//  TipCalcViewController.swift
//  BeastTipCalculator
//
//  Created by Akkshay Khoslaa on 1/10/16.
//  Copyright © 2016 Akkshay Khoslaa. All rights reserved.
//

import UIKit

class TipCalcViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var calcTipButton: UIButton!
    @IBOutlet weak var tenPercentLabel: UILabel!
    @IBOutlet weak var fifteenPercentLabel: UILabel!
    @IBOutlet weak var twentyPercentLabel: UILabel!
    @IBOutlet weak var tenPercentAmountLabel: UILabel!
    @IBOutlet weak var fifteenPercentAmountLabel: UILabel!
    @IBOutlet weak var twentyPercentAmountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //The code below is to add a blur effect to our backgroundImageView
        
        //First, we create a UIBlurEffect object with style .Dark
        var blur:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        
        //Next we create a UIVisualEffectView object that uses this blur effect object that we just created
        var effectView:UIVisualEffectView = UIVisualEffectView(effect: blur)
        
        //We set the frame of the effectView to the frame of the screen that is currently open
        effectView.frame = self.view.frame
        
        //We set this property to make sure the backgroundImageView's image does not go beyond the imageView's boundaries
        backgroundImageView.clipsToBounds = true
        
        //We add the effectView onto the backgroundImageView
        backgroundImageView.addSubview(effectView)
        
        //We are making sure that the textField, button, and all the labels show in front of the backgroundImageView and its blurView
        self.view.bringSubviewToFront(inputTextField)
        self.view.bringSubviewToFront(calcTipButton)
        self.view.bringSubviewToFront(tenPercentLabel)
        self.view.bringSubviewToFront(fifteenPercentLabel)
        self.view.bringSubviewToFront(twentyPercentLabel)
        self.view.bringSubviewToFront(tenPercentAmountLabel)
        self.view.bringSubviewToFront(fifteenPercentAmountLabel)
        self.view.bringSubviewToFront(twentyPercentAmountLabel)
        
        calcTipButton.layer.cornerRadius = 5

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func calculateTip(sender: AnyObject) {
        var amount:Double = Double(inputTextField.text!)!
        var tenPercentAmount = amount * 0.1
        var fifteenPercentAmount = amount * 0.15
        var twentyPercentAmount = amount * 0.2
        tenPercentAmountLabel.text = String(tenPercentAmount)
        fifteenPercentAmountLabel.text = String(fifteenPercentAmount)
        twentyPercentAmountLabel.text = String(twentyPercentAmount)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
