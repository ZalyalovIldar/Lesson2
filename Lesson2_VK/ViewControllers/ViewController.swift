//
//  ViewController.swift
//  Lesson2_VK
//
//  Created by Азат Султанов on 29/09/2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var smallImage: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var newsField: UITextField!
    @IBOutlet weak var statusField: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    let user = User()
    let cornerRadius = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData(with: user)

    }
    
    func fillData(with user: User) {
        
        self.title = user.name
        nameLabel.text = user.name + " " + user.surname
        imageAvatar.image = UIImage(named: user.avatar )
        imageAvatar.layer.cornerRadius = imageAvatar.frame.height / 2
        imageAvatar.clipsToBounds = true
        editButton.layer.cornerRadius = CGFloat(cornerRadius)
        smallImage.image = UIImage(named: user.avatar)
        smallImage.layer.cornerRadius = CGFloat(cornerRadius)
        self.title = user.name
        statusField.text = user.status
    }

    
}

