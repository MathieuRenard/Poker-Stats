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
    @IBOutlet var validationButton : UIButton!
    var selectedNumberOfPlayers = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        validationButton.hidden = true
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
    @IBAction func showbutton (sender : UITextField) {
        let playerNumber = Int(sender.text!)
        if playerNumber < 7 && playerNumber > 1 {
                validationButton.hidden = false
                selectedNumberOfPlayers = playerNumber!
            
        } else if sender.text == ""{
             validationButton.hidden = true
        } else {
            alert ( " Erreur ", message: " veuillez rentrer un chiffre compris entre 1 et 7 " )
            validationButton.hidden = true
        }
      
    }
    
    // permet d'incrémenter l'array de player
    func arrayOfPlayerWithCount(count: Int)->[Player]{
        var players = [Player]()
        for _ in 1 ... count{
            players.append(Player())
        }
        return players
    }
    
    // permet d'envoyer l array de player a BoardViewController
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "toBoard" {
        if let destinationViewController = segue.destinationViewController as? BoardViewController{
            let players = arrayOfPlayerWithCount(selectedNumberOfPlayers)
            destinationViewController.board.players = players
        }
    }
    
    
    }
    
}

