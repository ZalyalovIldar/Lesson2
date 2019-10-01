//
//  ViewController.swift
//  Lesson2_VK
//
//  Created by Азат Султанов on 29/09/2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var smaillImage: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var newsField: UITextField!
    @IBOutlet weak var statusField: UILabel!
    
    let user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData(user: user)
        // Do any additional setup after loading the view.
    }
    
    func fillData(user: User) {
        self.title = user.name
        nameLabel.text = user.name + " " + user.surname
        imageAvatar.image = UIImage(named: user.avatar )
        imageAvatar.layer.cornerRadius = imageAvatar.frame.height / 2
        imageAvatar.clipsToBounds = true
        editButton.layer.cornerRadius = 20
        smaillImage.image = UIImage(named: user.avatar)
        smaillImage.layer.cornerRadius = 20
        self.title = user.name
        statusField.text = user.status
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//            let editVC = segue.destination as! ViewController2
//            editVC.user = user
//            
//        }
//    }
    
}

