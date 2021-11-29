//
//  ViewController.swift
//  MyMassanger
//
//  Created by Egor Tushev on 05.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
             
        navigationController?.view.backgroundColor = UIColor(named: K.BrandColors.blue)
        navigationController?.navigationBar.tintColor = UIColor(named: K.BrandColors.lighBlue)
        
        titleLabel.text = ""
        
        var charIndex = 0
        
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) {(timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    
}

