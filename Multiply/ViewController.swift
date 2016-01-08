//
//  ViewController.swift
//  Multiply
//
//  Created by HChlebek on 9/14/15.
//  Copyright (c) 2015 HChlebek. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var marioImage: UIImageView!

    @IBOutlet weak var segmentController: UISegmentedControl!

    override func viewDidLoad()
    
    
    {
        super.viewDidLoad()
   
    }

    @IBAction func Button1(sender: AnyObject)
    {
    let inputOne = (textField1.text! as NSString).integerValue
    let inputTwo = (textField2.text! as NSString).integerValue
        
    var answer = inputOne * inputTwo
        
    productLabel.text = "\(answer)"
   
    if answer == 64
    { marioImage.image = UIImage (named: "mario")
        }
     
    else if answer % 2 == 1
    { marioImage.image = UIImage (named: "funny-animals-pictures-5")
        }

    else if answer % 2 == 0
    { marioImage.image = UIImage (named: "these_funny_animals_1099_640_01")
        }
        
    
        
    if (segmentController.selectedSegmentIndex) == 0
    { answer = inputOne + inputTwo
        }
        
    if (segmentController.selectedSegmentIndex) == 1
    { answer = inputOne - inputTwo
        }

    if (segmentController.selectedSegmentIndex) == 2
    { answer = inputOne * inputTwo
        }
        
    if (segmentController.selectedSegmentIndex) == 3
    { answer = inputOne / inputTwo
        }
        productLabel.text = "\(answer)"
}
}




