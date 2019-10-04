//
//  ProfileViewController.swift
//  VK
//
//  Created by Гиниятуллина Алсу Зямилевна on 30/09/2019.
//  Copyright © 2019 Гиниятуллина Алсу Зямилевна. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var titleViewController: UINavigationItem!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userAgeAndCity: UILabel!
    @IBOutlet weak var userBirthDate: UILabel!
    @IBOutlet weak var userCity: UILabel!
    @IBOutlet weak var userFamilyStatus: UILabel!
    @IBOutlet weak var userLanguage: UILabel!
    @IBOutlet weak var userLinkVK: UIButton!
    @IBOutlet weak var userLinkTwitter: UIButton!
    @IBOutlet weak var userLinkInstagram: UIView!
    @IBOutlet weak var userJob1: UIButton!
    @IBOutlet weak var userJob2: UIButton!
    @IBOutlet weak var userSchool: UILabel!
    @IBOutlet weak var userUniversity: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        
    super.viewDidLoad()
    variableInitialization()
        
    }
    
    
    func variableInitialization() {
        
        scrollView.contentSize.height = 1400
        
        let nameArray = ["Зеленка", "Пупочка", "Булочка", "Сгущенка"]
        
        userName.text = nameArray.randomElement()
        
        titleViewController.title = userName.text
        
        let ageAndCityArray = ["Казань, 18", "Казань, 16", "Москва, 18"]
        userAgeAndCity.text = ageAndCityArray.randomElement()
        
        let cityArray = ["Казань", "Москва"]
        userCity.text = cityArray.randomElement()
        
        let familyStatusArray = ["замужем", "не замужем", "влюблена"]
        userFamilyStatus.text = familyStatusArray.randomElement()
        
        let languageArray = ["Русский", "English", "Татарский", "Русский, English, Татарский"]
        userLanguage.text = languageArray.randomElement()
        
        let universityArray = ["КФУ", "КНИТУ", "КАИ"]
        userUniversity.text = universityArray.randomElement()
        
    }
}
