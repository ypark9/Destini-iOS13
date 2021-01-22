//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    //controller
    var storyBrain = StoryBrain()
    
    func updateUI() {
        let curPos = storyBrain.curStoryPos
        storyLabel.text = storyBrain.storyArray[curPos].title
        if(choice1Button.titleLabel != nil)
        {
            //choice1Button.titleLabel!.text = storyBrain.storyArray[curPos].choice1
            choice1Button.setTitle(storyBrain.storyArray[curPos].choice1, for: .normal)
        }
        if(choice2Button.titleLabel != nil)
        {
           // choice2Button.titleLabel!.text = storyBrain.storyArray[curPos].choice2
            choice2Button.setTitle(storyBrain.storyArray[curPos].choice2, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if  ((choice1Button.titleLabel) != nil) {
            
            // get what next story line we need to prepare
            storyBrain.getNextStoryNumber(choice: choice1Button.titleLabel!.text!)
            updateUI()
        }
    }
    
}

