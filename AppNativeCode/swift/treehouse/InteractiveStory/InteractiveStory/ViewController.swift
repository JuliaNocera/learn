//
//  ViewController.swift
//  InteractiveStory
//
//  Created by Julia Nocera on 7/13/16.
//  Copyright © 2016 Julia Nocera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // called anytime a segue is about to fire off
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "startAdventure" {
            if let pageController = segue.destinationViewController as? PageController {
                // pagecontroller instance already inited so instead we :
                pageController.page = Adventure.storyAdventure
            }
        }
    }

}

/* Interface builder abstracts and hides code from us - by building views we can see what is happening under the hood more */