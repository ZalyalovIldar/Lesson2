//
//  NewStatusViewController.swift
//  Lesson2
//
//  Created by Amir on 28/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

protocol DataPassDelegate: AnyObject {
    func statusUpdated(with text: String)
}

class NewStatusViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var statusTextView: UITextView!
    
    var text: String!
    weak var delegate: DataPassDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statusTextView.text = text
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        delegate.statusUpdated(with: statusTextView.text)
        dismiss(animated: true, completion: nil)
    }
}
