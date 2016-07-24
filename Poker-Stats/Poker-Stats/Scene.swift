//  Scene.swift
//  Poker-Stats
//
//  Created by Mathieu Renard on 21/07/2016.
//  Copyright © 2016 Mathieu Renard. All rights reserved.
//

import Foundation
import UIKit

internal class Scene : UIViewController , UIPickerViewDataSource , UIPickerViewDelegate {
    

    @IBOutlet weak var picker: UIPickerView!

    var pickerVal : [String]!
    var pickerSuit : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        pickerVal = ["As", "2","3","4","5","6","7","8","9","10","J","Q","K"]
        pickerSuit = ["Spade","Heart","Diamond","Club"]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
    return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
    
        if(component == 0){
        return pickerSuit.count
        }
        return pickerVal.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
   
        if(component == 0){
            return pickerSuit[row]
        }
        return pickerVal[row]
    }
    
    /*fonction pour récupérer les données du pickerview ( a coder )
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        // use the row to get the selected row from the picker view
        // using the row extract the value from your datasource (array[row])
    }
    
   */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}