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
    @IBOutlet weak var gr3: UITextField!
    @IBOutlet weak var gr4: UITextField!
    @IBOutlet weak var gr5: UITextField!
    @IBOutlet weak var gr6: UITextField!
    
    @IBOutlet weak var credit1: UITextField!
    @IBOutlet weak var credit2: UITextField!
    @IBOutlet weak var credit3: UITextField!
    @IBOutlet weak var credit4: UITextField!
    @IBOutlet weak var credit5: UITextField!
    @IBOutlet weak var credit6: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func calcButton(_ sender: UIButton) {
        var grade1 = Float(gr1.text!)
        var grade2 = Float(gr2.text!)
        var grade3 = Float(gr3.text!)
        var grade4 = Float(gr4.text!)
        var grade5 = Float(gr5.text!)
        var grade6 = Float(gr6.text!)
        
        var creditt1 = Float(credit1.text!)
        var creditt2 = Float(credit2.text!)
        var creditt3 = Float(credit3.text!)
        var creditt4 = Float(credit4.text!)
        var creditt5 = Float(credit5.text!)
        var creditt6 = Float(credit6.text!)
        var totalCredit = (creditt1!+creditt2!+creditt3!+creditt4!+creditt5!+creditt6!)
        
        
    
        var calculate = ((grade1!*creditt1!)+(grade2!*creditt2!)+(grade3!*creditt3!)+(grade4!*creditt4!)+(grade5!*creditt5!)+(grade6!*creditt6!))
        var calculate2 = calculate/(totalCredit)
        var gpa = String(calculate2)

        
        let alertController = UIAlertController(title: "dis ur grade", message: gpa, preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
    

    
    

}

