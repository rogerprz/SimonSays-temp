//
//  CircularButton.swift
//  SimonSays2
//
//  Created by Roger Perez on 5/6/20.
//  Copyright © 2020 Roger Perez. All rights reserved.
//

import UIKit

class CircularButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = frame.size.width/2
        layer.masksToBounds = true
    }

}
