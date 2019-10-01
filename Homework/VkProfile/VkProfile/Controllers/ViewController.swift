//
//  ViewController.swift
//  VkProfile
//
//  Created by Роман Шуркин on 29/09/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var homeTownLabel: UILabel!
    @IBOutlet weak var languagesLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var vkLabel: UILabel!
    @IBOutlet weak var companyOneLabel: UILabel!
    @IBOutlet weak var companyTwoLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var giftFirstImage: UIImageView!
    @IBOutlet weak var giftSecondImage: UIImageView!
    @IBOutlet weak var giftThirdImage: UIImageView!
    
    var modelController = ModelController()
    let constStatusString = "Измените статус"
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        statusLabel?.text = modelController.textOfStatus
        
        if modelController.textOfStatus == constStatusString {
            statusLabel?.textColor = .gray
        }
        else {
            statusLabel?.textColor = .black
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        customScroll()
        customAvatar()
        randomProfileUser()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let editStatusVC = segue.destination as? EditStatusViewController {
            editStatusVC.modelController = modelController
        }
    }
    
    func customScroll() {
        scroller?.contentSize = CGSize(width: 300, height: 1000)
    }
    
    func customAvatar() {
        
        avatarImage?.layer.masksToBounds = false
        avatarImage?.layer.cornerRadius = (avatarImage?.bounds.width ?? 0) / 2
        avatarImage?.clipsToBounds = true
    }
    
    func randomProfileUser() {
        
        let randomUser = User.getRandomUser()
        var languagesString = ""
        
        for language in randomUser.languages {
            languagesString += String(language + ", ")
        }
        
        languagesString.removeLast(2)
        
        
        avatarImage?.image = UIImage(named: randomUser.avatarImage)
        yearLabel?.text = randomUser.year
        cityLabel?.text = randomUser.city
        nameLabel?.text = randomUser.name
        statusLabel?.text = randomUser.status
        dateOfBirthLabel?.text = randomUser.dateOfBirth
        homeTownLabel?.text = randomUser.homeTown
        languagesLabel?.text = languagesString
        locationLabel?.text = randomUser.location
        instagramLabel?.text = randomUser.instagram
        vkLabel?.text = randomUser.vk
        companyOneLabel?.text = randomUser.companyOne
        companyTwoLabel?.text = randomUser.companyTwo
        schoolLabel?.text = randomUser.school
        universityLabel?.text = randomUser.university
    }
}

