//
//  PageController.swift
//  InteractiveStory
//
//  Created by Julia Nocera on 7/14/16.
//  Copyright © 2016 Julia Nocera. All rights reserved.
//

import UIKit

// NSAttributedString -> obj-c : contains string along with a dictionary of things we can do to modify the string

class PageController: UIViewController {
    
    var page: Page? // page controller shoud not be created without a page so optional is not a good idea here but because swift is so strict with init we must

    let artwork = UIImageView()
    let storyLabel = UILabel()
    let firstChoiceButton = UIButton(type: .System)
    let secondChoiceButton  = UIButton(type: .System)
    
    // this is the one the storyboard uses
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // this is the one the page controller uses
    init(page: Page) {
        self.page = page
        super.init(nibName: nil, bundle: nil)
    }   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        // Do any additional setup after loading the view.
        if let page = page {
            // obj-c has diff classes for mutable or immutable class
            artwork.image = page.story.artwork
            // NSString or NSMutableString
            let attributedString = NSMutableAttributedString(string: page.story.text)
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 10
            
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedString.length)) // you can specify only parts of it or all of it - range here though is in objective C
            storyLabel.attributedText = attributedString
            
            if let firstChoice = page.firstChoice {
                firstChoiceButton.setTitle(firstChoice.title, forState: .Normal)
                firstChoiceButton.addTarget(self, action: #selector(PageController.loadFirstChoice), forControlEvents: .TouchUpInside) // self refers to this viewController
                // no defualts so we get a black background color
            } else {
                firstChoiceButton.setTitle("Play Again", forState: .Normal)
                firstChoiceButton.addTarget(self, action: #selector(PageController.playAgain), forControlEvents: .TouchUpInside)
            }
            
            if let secondChoice = page.secondChoice {
                secondChoiceButton.setTitle(secondChoice.title , forState: .Normal)
                secondChoiceButton.addTarget(self, action: #selector(PageController.loadSecondChoice), forControlEvents: .TouchUpInside)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
       //set artwork view -> this is a subview of the viewController (this is the explicit way of just throwing up an image in storyboard
        view.addSubview(artwork)
        // auto constraints still exist - we need to set to defaults 
        artwork.translatesAutoresizingMaskIntoConstraints = false // if we don't do this, the parent view will add constraints that you don't want -- NOTE: don't set this on the main view 
        /*
         artwork.topAnchor.constraintEqualToAnchor(view.topAnchor).activate = true    <-- this is how you do one constraint and activate it at a time
         NSLayoutConstraint.activateConstraints is a better way to group all constraints and activate as one
        */
        NSLayoutConstraint.activateConstraints([
            artwork.topAnchor.constraintEqualToAnchor(view.topAnchor),
            artwork.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor),
            artwork.rightAnchor.constraintEqualToAnchor(view.rightAnchor),
            artwork.leftAnchor.constraintEqualToAnchor(view.leftAnchor)
        ])
        
        view.addSubview(storyLabel)
        storyLabel.translatesAutoresizingMaskIntoConstraints = false
        storyLabel.numberOfLines = 0 // allows all text to exist on the line
        NSLayoutConstraint.activateConstraints([
            storyLabel.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor, constant: 16.0),
            storyLabel.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor, constant: -16.0),
            storyLabel.topAnchor.constraintEqualToAnchor(view.centerYAnchor, constant: -48.0) // below the center by 48 points
        ])
        // x access - spacing increases positively to the right and negatively to the left - so on the left side anchor you find yourself at the edge of the canvas
        
        view.addSubview(firstChoiceButton)
        firstChoiceButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activateConstraints([
            firstChoiceButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
            firstChoiceButton.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -80.0)
        ])
        
        view.addSubview(secondChoiceButton)
        secondChoiceButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activateConstraints([
            secondChoiceButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor),
            secondChoiceButton.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -32.0)
        ])
        
    }
    
    // we cannot use one function for two target/action pattern selectors -- button uses a name & looks up the name and calls the func so you cannot pass parameters
    func loadFirstChoice() {
        // retrive page instance and initialize a new controller with it
        if let page = page, firstChoice = page.firstChoice {
            let nextPage = firstChoice.page
            let pageController = PageController(page: nextPage)
            
            // this is the same as making a seque in the storyboard
            navigationController?.pushViewController(pageController, animated: true)
        }
    }
    
    func loadSecondChoice() {
        if let page = page, secondChoice = page.secondChoice {
            let nextPage = secondChoice.page
            let pageController = PageController(page: nextPage)
            
            navigationController?.pushViewController(pageController, animated: true)
        }
    }

    func playAgain() {
        navigationController?.popToRootViewControllerAnimated(true) // go back to the beginning
    }
}
