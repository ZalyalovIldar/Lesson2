//
//  ViewController.swift
//  Lesson2
//
//  Created by Evgeniy on 27/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstNames = ["Евгений", "Михаил", "Егор", "Игорь", "Федор", "Петр", "Алексей", "Артем", "Андрей", "Максим"]
    let lastNames = ["Кузьмин", "Иванов", "Петров", "Кузнецов", "Попов", "Новиков", "Морозов", "Семенов", "Лебедев", "Николаев"]
    let birthDates = ["01/11/2000", "03/09/1994", "11/11/1991", "09/04/2001", "23/3/1980", "17/06/1994", "30/01/1976", "26/07/1999", "04/02/1990", "21/11/2000"]
    let cities = ["Казань", "Москва", "Санкт-Петербург", "Чебоксары", "Пенза", "Краснодар", "Челябинск", "Кострома", "Тверь", "Волгоград"]
    let educationPlaces = ["КФУ", "МГУ", "СПБГУ"]
    let linkNames = ["somanypersons", "manyfaces", "alloveragain"]
    let phoneNumbers = ["89175463245", "89007636723", "88763456187"]
    let jobs = ["Google", "Facebook", "IBM", "Oracle", "Microsoft"]
    let localJobs = ["Yandex", "VK", "1C", "ABBYY", "MailRu"]
    let presents = ["VKPresent1", "VKPresent2", "VKPresent3", "VKPresent4", "VKPresent5"]
    let statuses = ["Все классно!", "На работе", "Занят :(", "Отдыхаю ;)"]
    
    var firstName: String!
    var lastName: String!
    var birthDate: String!
    var age: Int!
    var city: String!
    var educationPlace: String!
    var phoneNumber: String!
    var vkLinkName: String!
    var instagramLinkName: String!
    var careerOne: String!
    var careerTwo: String!
    var schoolNumber = Int.random(in: 1 ... 100)
    var presentOne: String!
    var presentTwo: String!
    var presentThree: String!
    var userStatus = ""
    let now = Date()
    let dateFormatter = DateFormatter()
    var windowFrame: CGRect!
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var profileAvatar: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileAgeAndCity: UILabel!
    @IBOutlet weak var profileBirthDateLine: UILabel!
    @IBOutlet weak var profileCityLine: UILabel!
    @IBOutlet weak var profileEducationPlaceLine: UILabel!
    @IBOutlet weak var profilePhoneNumberLine: UILabel!
    @IBOutlet weak var profileVKLinkLine: UILabel!
    @IBOutlet weak var profileInstagramLinkLine: UILabel!
    @IBOutlet weak var profileSchoolNumberLine: UILabel!
    @IBOutlet weak var profileHighSchoolLine: UILabel!
    @IBOutlet weak var profileCareerLineOne: UILabel!
    @IBOutlet weak var profileCareerLineTwo: UILabel!
    @IBOutlet weak var profilePresent1ImageView: UIImageView!
    @IBOutlet weak var profilePresent2ImageView: UIImageView!
    @IBOutlet weak var profilePresent3ImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mainViewInsideScrollView: UIView!
    @IBOutlet weak var profileStatusLine: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        windowFrame = UIScreen.main.bounds
        scrollView.contentSize.width = windowFrame.size.width
        scrollView.contentSize.height = 991
        
        firstName = firstNames.randomElement()!
        lastName = lastNames.randomElement()!
        birthDate = birthDates.randomElement()!
        city = cities.randomElement()!
        educationPlace = educationPlaces.randomElement()!
        vkLinkName = linkNames.randomElement()!
        instagramLinkName = linkNames.randomElement()!
        phoneNumber = phoneNumbers.randomElement()!
        careerOne = localJobs.randomElement()!
        careerTwo = jobs.randomElement()!
        presentOne = presents.randomElement()!
        presentTwo = presents.randomElement()!
        presentThree = presents.randomElement()!
        userStatus = statuses.randomElement()!
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let birthday: Date = dateFormatter.date(from: birthDate)!
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthday, to: now)
        
        navigationBar.title = firstName
        navigationBar.titleView?.bounds = CGRect(x: 0, y: 0, width: 375, height: 50)
        navigationItem.backBarButtonItem?.title = "                       "
        profileAvatar.layer.cornerRadius = profileAvatar.frame.size.width / 2
        profileAvatar.clipsToBounds = true
        profileAvatar.layer.borderWidth = 1.0
        profileAvatar.layer.borderColor = UIColor.white.cgColor
        profileName.text = firstName + " " + lastName
        profileAgeAndCity.text = "\(ageComponents.year!) лет, " + city
        profileBirthDateLine.text = "     " + birthDate
        profileCityLine.text = "     " + city
        profileEducationPlaceLine.text = "     " + educationPlace
        profilePhoneNumberLine.text = "     " + phoneNumber
        profileVKLinkLine.text = "     " + vkLinkName
        profileInstagramLinkLine.text = "     " +  instagramLinkName
        profileSchoolNumberLine.text = "     " + "Школа №\(schoolNumber)"
        profileHighSchoolLine.text = "     " + educationPlace
        profileCareerLineOne.text = "     " + careerOne
        profileCareerLineTwo.text = "     " + careerTwo
        profilePresent1ImageView.image = UIImage(named: presentOne)
        profilePresent2ImageView.image = UIImage(named: presentTwo)
        profilePresent3ImageView.image = UIImage(named: presentThree)
        profileStatusLine.text = "     " + userStatus
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "statusEditing" {
            let destVC = segue.destination as! StatusEditingViewController
            destVC.viewController = self
            destVC.statusText = userStatus
        }
    }
    
    func updateStatus(newStatus: String) {
        
        userStatus = newStatus
        profileStatusLine.text = "     " + newStatus
    }
    
    @IBAction func unwindToProfile(_ sender: UIStoryboardSegue) { }
}
