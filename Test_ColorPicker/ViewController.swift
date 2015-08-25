//
//  ViewController.swift
//  Test_ColorPicker
//
//  Created by Scott Caruso Loaner on 8/24/15.
//  Copyright © 2015 Scott Caruso Loaner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider?
    @IBOutlet weak var greenSlider: UISlider?
    @IBOutlet weak var blueSlider: UISlider?
    @IBOutlet weak var leftColor: UIView?
    @IBOutlet weak var rightColor: UIView?
    @IBOutlet weak var redValueDisplay: UITextField?
    @IBOutlet weak var greenValueDusplay: UITextField?
    @IBOutlet weak var blueValueDisplay: UITextField?
    @IBOutlet weak var hexCodeText: UILabel?
    
    //Left, Middle, and Right boxes, in order
    @IBOutlet weak var leftViewOne: UIView?
    @IBOutlet weak var leftViewTwo: UIView?
    @IBOutlet weak var leftViewThree: UIView?
    @IBOutlet weak var leftViewFour: UIView?
    @IBOutlet weak var leftViewFive: UIView?
    @IBOutlet weak var leftViewSix: UIView?
    @IBOutlet weak var leftViewSeven: UIView?
    @IBOutlet weak var leftViewEight: UIView?
    @IBOutlet weak var leftViewNine: UIView?
    @IBOutlet weak var midViewOne: UIView?
    @IBOutlet weak var midViewTwo: UIView?
    @IBOutlet weak var midViewThree: UIView?
    @IBOutlet weak var midViewFour: UIView?
    @IBOutlet weak var midViewFive: UIView?
    @IBOutlet weak var midViewSix: UIView?
    @IBOutlet weak var midViewSeven: UIView?
    @IBOutlet weak var midViewEight: UIView?
    @IBOutlet weak var midViewNine: UIView?
    @IBOutlet weak var rightViewOne: UIView?
    @IBOutlet weak var rightViewTwo: UIView?
    @IBOutlet weak var rightViewThree: UIView?
    @IBOutlet weak var rightViewFour: UIView?
    @IBOutlet weak var rightViewFive: UIView?
    @IBOutlet weak var rightViewSix: UIView?
    @IBOutlet weak var rightViewSeven: UIView?
    @IBOutlet weak var rightViewEight: UIView?
    @IBOutlet weak var rightViewNine: UIView?
    
    var redValue = 128;
    var greenValue = 128;
    var blueValue = 128;

    override func viewDidLoad() {
        
        redValueDisplay!.text = String(redValue);
        greenValueDusplay!.text = String(greenValue);
        blueValueDisplay!.text = String(blueValue);
        hexCodeText!.text = getHexValueFromColor();
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        if (sender.tag == 0)
        {
            let newValue = sender.value;
            redValue = Int(newValue);
            redValueDisplay!.text = String(redValue);
            
        } else if (sender.tag == 1)
        {
            let newValue = sender.value;
            greenValue = Int(newValue);
            greenValueDusplay!.text = String(greenValue);
        } else if (sender.tag == 2)
        {
            let newValue = sender.value;
            blueValue = Int(newValue);
            blueValueDisplay!.text = String(blueValue);
        }
        let newBaseColor = generateColorFromRGBValues();
        midViewFive?.backgroundColor = newBaseColor;
        hexCodeText!.text = getHexValueFromColor();
    }
    
    func generateColorFromRGBValues() -> (UIColor){

        let currentBaseColor = UIColor(red: CGFloat(Float(redValue)/Float(255)), green: CGFloat(Float(greenValue)/Float(255)), blue: CGFloat(Float(blueValue)/Float(255)), alpha: CGFloat(1.0));
        return currentBaseColor;
    }
    
    func getHexValueFromColor() -> (String) {
        let hexValue = String(format:"%02X", Int(redValue)) + String(format:"%02X", Int(greenValue)) + String(format:"%02X", Int(blueValue));
        return hexValue;
        
    }


}

