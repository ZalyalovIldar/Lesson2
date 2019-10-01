//
//  EditStatusViewController.swift
//  VkProfile
//
//  Created by Роман Шуркин on 01/10/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import UIKit

class EditStatusViewController: UIViewController {

    @IBOutlet weak var newStatusTextView: UITextView!
    
    var modelController: ModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newStatusTextView.text = modelController.textOfStatus
    }
    
    @IBAction func changeStatus(_ sender: Any) {
        
        modelController.textOfStatus = newStatusTextView.text
        dismiss(animated: true, completion: nil)
    }
}
