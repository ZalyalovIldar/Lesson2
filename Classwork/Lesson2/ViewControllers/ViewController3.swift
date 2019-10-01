//
//  ViewController3.swift
//  Lesson2
//
//  Created by Ильдар Залялов on 25/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didPressedBack(_ backButton: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
}
