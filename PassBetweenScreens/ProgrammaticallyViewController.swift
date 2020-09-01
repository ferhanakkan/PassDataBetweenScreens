//
//  ProgrammaticallyViewController.swift
//  PassBetweenScreens
//
//  Created by Ferhan Akkan on 2.09.2020.
//

import UIKit

class ProgrammaticallyViewController: UIViewController {
    
    var name = ""
    var surname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        
        label.text = "name: \(name) surname: \(surname)"
        label.textColor = .red
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    
}
