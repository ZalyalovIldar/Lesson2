//
//  ViewController.swift
//  HW2
//
//  Created by Азат Султанов on 30/09/2019.
//  Copyright © 2019 Азат Султанов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var allPhotosButton: UIButton!
    @IBOutlet weak var allPhotosLabel: UILabel!
    
    @IBOutlet weak var addStoryButton: UIButton!
    @IBOutlet weak var addPicButton: UIButton!
    @IBOutlet weak var whatNewTextField: UITextField!
    @IBOutlet weak var allPhotos: UIImageView!
    
    let user = User()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUser(user: user)
        
        
        
    }
    
    
    func createUser(user: User) {
        self.title = user.name
        avatarImage.image = UIImage(named: user.avatar)
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        avatarImage.clipsToBounds = true
        fullName.text = user.name + " " + user.surname
        allPhotos.image = UIImage(named: user.avatar)
        status.text = user.status
    }

}

