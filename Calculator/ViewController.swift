//
//  ViewController.swift
//  Calculator
//
//  Created by Dan Říčař on 22/10/2019.
//  Copyright © 2019 Dan Říčař. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel! // Obraz
    
    var numberDisplayed: Double = 0 // Pamět
    var previousNumber: Double = 0
    var doingMath = false
    var operation = 0
    
    @IBAction func numbers(_ sender: UIButton) { // Čísla
        if doingMath == true
        {
            label.text = String(sender.tag-1)
            numberDisplayed = Double(label.text!)!
            doingMath = false
        }
        else
        {
        label.text = label.text! + String(sender.tag-1)
        numberDisplayed = Double(label.text!)!
        }
    
    }
    
    @IBAction func button(_ sender: UIButton) { // Tlačítka
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 // Děleno
            {
                label.text = "÷"
            }
            else if sender.tag == 13 // Krát
            {
                label.text = "×"
            }
            else if sender.tag == 14 // Mínus
            {
                label.text = "-"
            }
            else if sender.tag == 15 // Plus
            {
                label.text = "+"
            }
            operation = sender.tag
            doingMath = true
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberDisplayed)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberDisplayed)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberDisplayed)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberDisplayed)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0;
            numberDisplayed = 0;
            operation = 0;
        }
    }
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var times: UIButton!
    @IBOutlet weak var divided: UIButton!
    
    @IBOutlet weak var equals: UIButton!
    @IBOutlet weak var ac: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.applyRoundCorner2(object: zero)
        self.applyRoundCorner(object: one)
        self.applyRoundCorner(object: two)
        self.applyRoundCorner(object: three)
        self.applyRoundCorner(object: four)
        self.applyRoundCorner(object: five)
        self.applyRoundCorner(object: six)
        self.applyRoundCorner(object: seven)
        self.applyRoundCorner(object: eight)
        self.applyRoundCorner(object: nine)
        
        self.applyRoundCorner(object: plus)
        self.applyRoundCorner(object: minus)
        self.applyRoundCorner(object: times)
        self.applyRoundCorner(object: divided)
        
        self.applyRoundCorner2(object: equals)
        self.applyRoundCorner3(object: ac)
 
    }

    func applyRoundCorner(object:AnyObject) {
        object.layer.cornerRadius = object.frame.size.width / 2
    
    }
    func applyRoundCorner2(object:AnyObject) {
        object.layer.cornerRadius = object.frame.size.width / 5
        
    }
    func applyRoundCorner3(object:AnyObject) {
        object.layer.cornerRadius = object.frame.size.width / 7
        
    }
    
}

