//
//  ViewController.swift
//  Poker-Stats
//
//  Created by Mathieu Renard on 19/07/2016.
//  Copyright © 2016 Mathieu Renard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var playerNumber : UITextField!
    @IBOutlet var buttonValidation : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonValidation.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Ouvre une popup
    func alert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let ok = UIAlertAction (title: "Ok", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(ok)
        self.presentViewController(alert, animated: true, completion: nil)
    }

    // fonction pour afficher le boutton 
    @IBAction func playerNumber(sender : UITextField){
    
        if buttonValidation.hidden{
            
            let myInt = Int(sender.text!)
            if myInt < 7 && myInt > 1 {
                buttonValidation.hidden = false
               
            }
        }
        
        
        
    }


}

