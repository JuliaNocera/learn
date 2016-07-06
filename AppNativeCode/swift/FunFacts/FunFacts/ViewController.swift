//
//  ViewController.swift
//  FunFacts
//
//  Created by Julia Nocera on 6/24/16.
//  Copyright © 2016 Julia Nocera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel! // weak by default
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel() // create a new instance of the struct
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.randomFact() // V vs S in atocomplete - v = vat , s = struct
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() { // IBAction -> tells interface builder there is an object linked to this 
        // funFactLabel is an instance of the UI Class and this has a property text we can access thanks to above IBOutlet
        funFactLabel.text = factModel.randomFact()
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}

