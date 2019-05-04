//
//  Classification.swift
//  Field Survey
//
//  Created by Eric Mitchell on 5/3/19.
//  Copyright © 2019 Eric Mitchell. All rights reserved.
//

import UIKit

enum Classification: String {
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
