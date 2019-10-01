//
//  ViewController2.swift
//  Lesson2
//
//  Created by Ильдар Залялов on 25/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    deinit {
        
        print("Deallocated")
    }
    
    @IBAction func didPressedBack(_ backButton: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
}
