//
//  ViewController.swift
//  multiples-app
//
//  Created by Mo Armstrong on 4/27/16.
//  Copyright © 2016 Mo Armstrong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// Variables
    var maxMultiple = 0
    var currentMultiple = 0
    var newMultiple = 0

// Outlets
    @IBOutlet weak var multLogo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multipleTxt: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var multipleLbl: UILabel!
    
// Actions
    @IBAction func onAddTapped(sender: UIButton) {
        newMultiple = maxMultiple + currentMultiple;
        updateAddLbl();
        currentMultiple = newMultiple;
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
       
        
        if multipleTxt.text != nil && multipleTxt.text != "" { // Validation
            
            multLogo.hidden = true
            playBtn.hidden = true
            multipleTxt.hidden = true
            
            addBtn.hidden = false
            multipleLbl.hidden = false
            
            
            maxMultiple = Int(multipleTxt.text!)! // Validation
            currentMultiple = 0
            
            updateAddLbl();
            
        }
    }
    
    func restartGame() {
        currentMultiple = 0
        multipleTxt.text = ""
        
        multLogo.hidden = false
        playBtn.hidden = false
        multipleTxt.hidden = false
        
        addBtn.hidden = true
        multipleLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        if newMultiple >= maxMultiple * 11 {
            return true
        } else {
            return false
        }
    }
    
    
    func updateAddLbl() {
        multipleLbl.text = "\(currentMultiple) + \(maxMultiple) = \(newMultiple)";
    }


}






