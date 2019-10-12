//
//  NewStatusViewController.swift
//  Lesson2
//
//  Created by Сергей Шабельник on 12.10.2019.
//  Copyright © 2019 Сергей Шабельник. All rights reserved.
//

import UIKit

protocol Status{
    func updateStatus(with text: String)
}

class NewStatusViewController: UIViewController {

    @IBOutlet weak var newStatusView: UITextView!
    
    var delegate: Status!
    var text: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newStatusView.text = text
        // Do any additional setup after loading the view.
    }
    @IBAction func saveButtonPressed(_ sender: Any) {
       delegate.updateStatus(with: newStatusView.text)
       dismiss(animated: true, completion: nil)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
