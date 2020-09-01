//
//  XibViewController.swift
//  PassBetweenScreens
//
//  Created by Ferhan Akkan on 2.09.2020.
//

import UIKit

class XibViewController: UIViewController {
    
    var name = ""
    var surname = ""{
        didSet {
            dataLabel.text = "name: \(name) surname: \(surname)"
        }
    }
    
    
    @IBOutlet weak var dataLabel: UILabel!
    
}
