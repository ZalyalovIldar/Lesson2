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
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeStatus(_ sender: Any) {
        modelController.textOfStatus = newStatusTextView.text
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
