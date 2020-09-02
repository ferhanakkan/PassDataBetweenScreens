//
//  ViewController.swift
//  PassBetweenScreens
//
//  Created by Ferhan Akkan on 2.09.2020.
//

public extension UIStoryboard {
    
    static var myStoryboardName: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: .main)
    }
}

import UIKit

class ViewController: UIViewController {
    
    
    // Segue icin kullanilan kisimdir. Diger kisimlar icin gerekmemektedir.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueID"{
            let vc = segue.destination as! SegueViewController
            vc.name = "Segue Ferhan"
            vc.surname = "Segue Akkan"
        }}
    
    
    @IBAction func segueButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "segueID", sender: nil)
        // Diger yollardaki gibi present etmek icin ayri bi segue cizmek gerekmektedir.
    }
    
    @IBAction func storyboardIDButtonPressed(_ sender: Any) {
        let vc = UIStoryboard.myStoryboardName.instantiateViewController(identifier: "storyboardID") as! BundleViewController
        vc.name = "storyboardID Ferhan"
        vc.surname = "storyboardID Akkan"
        show(vc, sender: nil)
        //        present(vc, animated: true)
    }
    
    
    @IBAction func programmaticButtonPressed(_ sender: Any) {
        let vc = ProgrammaticallyViewController()
        vc.name = "Program Ferhan"
        vc.surname = "Progra Akkan"
        show(vc, sender: nil)
        //        present(vc, animated: true)
    }
    
    @IBAction func xibButtonPressed(_ sender: Any) {
        if let vc = Bundle.main.loadNibNamed("XibExampleView", owner: self, options: nil)?.first as? XibViewController {
            vc.name = "Xib Ferhan"
            vc.surname = "Xib Akkan"
            show(vc, sender: nil)
            //        present(vc, animated: true)
        }
    }
    
}
