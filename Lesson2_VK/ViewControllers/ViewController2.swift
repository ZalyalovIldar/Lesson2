//
//  VViewController2.swift
//  Lesson2_VK
//
//  Created by Азат Султанов on 30/09/2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageAvatar: UIImageView!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var birhdayField: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var studietLabel: UILabel!
    
    
    @IBOutlet weak var vkLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    
    
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    
    
    @IBOutlet weak var politicalLabel: UILabel!
    @IBOutlet weak var religionLabel: UILabel!
    
    
    @IBOutlet weak var giftImage1: UIImageView!
    @IBOutlet weak var giftImage2: UIImageView!
    @IBOutlet weak var giftImage3: UIImageView!
    let scrollHeight = 1400
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = User()
        fillData(user: user)
    }
    
    func fillData(user: User){
        
        scrollView.contentSize.height = CGFloat(scrollHeight)
        nameLabel.text = user.name + " " + user.surname
        imageAvatar.image = UIImage(named: user.avatar )
        imageAvatar.layer.cornerRadius = imageAvatar.frame.height / 2
        imageAvatar.clipsToBounds = true
        statusLabel.text = user.status
        birhdayField.text = user.birthDay
        hometownLabel.text = user.homeTown
        studietLabel.text = user.university
        vkLabel.text = "\(user.vkId)"
        instagramLabel.text = user.instagram
        universityLabel.text = user.university
        schoolLabel.text = user.school
        politicalLabel.text = user.politicalViews
        religionLabel.text = user.religion
        giftImage1.image = UIImage(named: user.gifts[0])
        giftImage2.image = UIImage(named: user.gifts[1])
        giftImage3.image = UIImage(named: user.gifts[1])
    }
    
}
