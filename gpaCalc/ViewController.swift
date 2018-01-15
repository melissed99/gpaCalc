//
//  ViewController.swift
//  gpaCalc
//
//  Created by Gabbie Doroteo on 2018-01-14.
//  Copyright © 2018 Gabbie Doroteo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gpatitle: UILabel!
    @IBOutlet weak var gr1: UITextField!
    @IBOutlet weak var gr2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func calcButton(_ sender: UIButton) {
        var grade1 = Int(gr1.text!)
        var grade2 = Int(gr2.text!)
        var total = grade1! + grade2!
        var avg = String(total / 2)
        
        let alertController = UIAlertController(title: "dis ur grade", message: avg, preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
    

    
    

}

