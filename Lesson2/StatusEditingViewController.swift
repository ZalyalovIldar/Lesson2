//
//  StatusEditingViewController.swift
//  Lesson2
//
//  Created by Evgeniy on 29/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class StatusEditingViewController: UIViewController {
    
    weak var viewController: ViewController!
    var statusText: String!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func saveButtonPressing(_ sender: Any?) {
        viewController.updateStatus(newStatus: textView.text)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = statusText
    }
}
    
