//
//  EditStatusViewController.swift
//  Lesson2
//
//  Created by underq on 30/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class EditStatusViewController : UIViewController {
  
    @IBOutlet weak var statusTextView: UITextView!
    
    var user: User!
    
    func configure(with user: User) {
        self.user = user
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configure(with: user)
        user = RandomUserBuilder.getRandomUser()
        statusTextView.text = user.status
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        user.status = statusTextView.text
        
        dismiss(animated: true)
    }
}
