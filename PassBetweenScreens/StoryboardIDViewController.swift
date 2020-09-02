//
//  StoryboardIDViewController.swift
//  PassBetweenScreens
//
//  Created by Ferhan Akkan on 2.09.2020.
//

import UIKit

class StoryboardIDViewController: UIViewController {
    
    var name = ""
    var surname = ""
    
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataLabel.text = "name: \(name) surname: \(surname)"
    }
    
    
}
