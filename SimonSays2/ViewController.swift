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
    
    var currentPlayer = 0
    var scores = [0,0]
    
    var sequenceIndex = 0
    var colorSequence = [Int]()
    var colorsToTap = [Int]()
    
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
        colorSequence.removeAll()
        
        actionButton.setTitle("Start Game", for: .normal)
        actionButton.isEnabled = true
        for button in colorButtons {
            button.alpha = 0.5
            button.isEnabled = false
        }
    }
    
    func addNewColor(){
        
    }
    
    func playSequence(){
        
    }
    
    
    @IBAction func colorButtonHandler(_ sender: CircularButton) {
        print("Button \(sender.tag) tapped")
    }
    
    @IBAction func actionButtonHandler(_ sender: UIButton) {
        print("Action Button")
        sequenceIndex = 0
        actionButton.setTitle("Memorize", for: .normal)
        actionButton.isEnabled = false
        view.isUserInteractionEnabled = false
    }
    
}

