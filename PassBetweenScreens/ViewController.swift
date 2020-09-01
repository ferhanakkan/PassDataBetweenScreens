//
//  ViewController.swift
//  PassBetweenScreens
//
//  Created by Ferhan Akkan on 2.09.2020.
//

public extension UIStoryboard {

    static var main: UIStoryboard {
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
    
    
    @IBAction func bundleButtonPressed(_ sender: Any) {
        
        let vc = UIStoryboard.main.instantiateViewController(identifier: "bundleTest") as! BundleViewController
        vc.name = "Bundle Ferhan"
        vc.surname = "Bundle Akkan"
//        show(vc, sender: nil)
        present(vc, animated: true)
    }
    
    
    @IBAction func programmaticButtonPressed(_ sender: Any) {
        let vc = ProgrammaticallyViewController()
        vc.name = "Ferhan"
        vc.surname = "Akkan"
//        show(vc, sender: nil)
                present(vc, animated: true)
    }
    
}
