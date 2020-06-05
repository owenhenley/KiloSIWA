//
//  MainViewController.swift
//  SIWA
//
//  Created by Owen Henley on 03/06/2020.
//  Copyright © 2020 Owen Henley. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    
    var user: User? = nil

       override func viewDidLoad() {
           super.viewDidLoad()
           
           detailsLabel.text = user?.debugDescription ?? "No user details"
       }
}
