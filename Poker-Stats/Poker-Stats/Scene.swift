//  Scene.swift
//  Poker-Stats
//
//  Created by Mathieu Renard on 21/07/2016.
//  Copyright © 2016 Mathieu Renard. All rights reserved.
//

import Foundation
import UIKit

internal class Scene : UIViewController , UIPickerViewDataSource , UIPickerViewDelegate {
    
    //Cache le clavier lorsque l'utilisateur touche l'écran
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBOutlet weak var validationPicker: UIButton!
    
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var cardButton2: UIButton!
    @IBOutlet weak var cardButton1Player2: UIButton!
    @IBOutlet weak var cardButton2Player2: UIButton!
    
    @IBOutlet weak var picker: UIPickerView!
   
    @IBOutlet weak var card1: UIImageView!
    @IBOutlet weak var card2: UIImageView!
    @IBOutlet weak var card3: UIImageView!
    @IBOutlet weak var card4: UIImageView!
    
    var selectedCard : Card?
    var selectedImageView : Int?
    var board = Board()
    

    var pickerVal : [String]!
    var pickerSuit : [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.hidden = true
        pickerVal = ["As", "2","3","4","5","6","7","8","9","10","J","Q","K"]
        pickerSuit = ["Spade","Heart","Diamond","Club"]
        validationPicker.hidden = true
        board.players = [Player()]
    }
    
    @IBAction func showPickerView ( sender : UIButton )
    {
        picker.hidden = false
       // if let player = board.players?.first{
        
            switch sender {
            case cardButton : selectedImageView = 1
                break
            case cardButton2 : selectedImageView = 2
                break
                
            case cardButton1Player2 : selectedImageView = 3
                break
            case cardButton2Player2 : selectedImageView = 4
                
            default :
                break
            }
       // }
        
    
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
    
    func pickerView( pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
    

                let suit = pickerView.selectedRowInComponent(0)
                let value = pickerView.selectedRowInComponent(1) + 1
                selectedCard = Card(value: value, suit: Suit(rawValue: suit)!)
        
        /*if let imageView = imageViewForCard(selectedCard!){
        
        imageView.image = selectedCard!.image
         
        }*/
        
        if selectedImageView == 1 {
            card1.image = selectedCard!.image
            
        }else if selectedImageView == 2 {
        
            card2.image = selectedCard!.image
        }else if selectedImageView == 3{
        
            card3.image = selectedCard!.image
        }else if selectedImageView == 4 {
        
            card4.image = selectedCard!.image
        }
        
                validationPicker.hidden = false
    }// end of did select
    
   
    // permet de savoir quel bouton a été appuyé
    func imageViewForCard ( card : Card ) -> UIImageView?{
        
        if let player = board.players?.first{
           
            if let card1 = player.card1 where card1 == card {
                return self.card1
            
            }else if let card2 = player.card2 where card2 == card{
            return self.card2
            
            }
          }
        return nil
        }
    
    
    
    
    
    
    @IBAction func hidePickerView(sender : UIButton )
    {
    picker.hidden = true
    validationPicker.hidden = true
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}