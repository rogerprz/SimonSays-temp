//
//  ViewController.swift
//  SimonSays2
//
//  Created by Roger Perez on 5/6/20.
//  Copyright © 2020 Roger Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var colorButtons: [CircularButton]!
    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet var playerLabels: [UILabel]!
    @IBOutlet var scoreLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorButtons = colorButtons.sorted(){
            $0.tag < $1.tag
        }
        playerLabels = playerLabels.sorted(){
            $0.tag < $1.tag
        }
        scoreLabels = scoreLabels.sorted(){
            $0.tag < $1.tag
        }
    }
    
    func createNewGame(){
        actionButton.setTitle("Start Game", for: .normal)
        for button in colorButtons {
            button.alpha = 0.5
        }
    }
    
    
    @IBAction func colorButtonHandler(_ sender: CircularButton) {
        print("Button \(sender.tag) tapped")
    }
    
    @IBAction func actionButtonHandler(_ sender: UIButton) {
        print("Action Button")
    }
    
}

