//
//  RootViewController.swift
//  MadLibs
//
//  Created by Carl R Knox on 1/21/15.
//  Copyright (c) 2015 Carl R Knox. All rights reserved.
//

import Cocoa

class RootViewController: NSViewController {

    @IBOutlet weak var pastTenseVerbTextField: NSTextField!
    @IBOutlet weak var singularNounCombo: NSComboBox!
    var singularNouns: [String]!
    @IBOutlet weak var pluralNounPopup: NSPopUpButton!
    var pluralNouns: [String]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }


    
    override func awakeFromNib() {
        println("View controller instance with view: \(self.view)")
        
        // Set the default text for the pastTenseVerbTextField property
        pastTenseVerbTextField.stringValue = "ate"
        
        // Setup the combo box with singular nouns
        singularNouns = ["dog", "muppet", "ninja", "fat dude"]
        singularNounCombo.removeAllItems()
        singularNounCombo.addItemsWithObjectValues(singularNouns)
        singularNounCombo.selectItemAtIndex(2)
    
        // setup the popup button with plural nouns
        pluralNouns = ["tacos", "rainbows", "iPhones", "gold coins"]
        pluralNounPopup.removeAllItems()
        pluralNounPopup.addItemsWithTitles(pluralNouns)
        pluralNounPopup.selectItemAtIndex(0)
    
    }
    
}
