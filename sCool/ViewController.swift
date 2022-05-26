//
//  ViewController.swift
//  sCool
//
//  Created by Cassiano Carradore Salgado on 18/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonColab: SoftButton!
    @IBOutlet weak var buttonFinan: SoftButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        buttonColab.setupButtons()
//        buttonFinan.setupButtons()
        self.navigationController?.isNavigationBarHidden = true
        buttonColab.makeNeuromorphic(cornerRadius: buttonColab.bounds.height/2, superView: self.view)
        buttonFinan.makeNeuromorphic(cornerRadius: buttonFinan.bounds.height/2, superView: self.view)
    }
}

