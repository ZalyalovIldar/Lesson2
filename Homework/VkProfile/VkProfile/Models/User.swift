//
//  User.swift
//  VkProfile
//
//  Created by Роман Шуркин on 30/09/2019.
//  Copyright © 2019 Роман Шуркин. All rights reserved.
//

import Foundation
import UIKit

struct User {
    
    var avatarImage: String
    var year: String
    var city: String
    var name: String
    var status: String
    var dateOfBirth: String
    var homeTown: String
    var languages: [String]
    var location: String
    var instagram: String
    var vk: String
    var companyOne: String
    var companyTwo: String
    var school: String
    var university: String
    
    static let avatars = [
        "1",
        "1_2",
        "1_3"
    ]
    static let years = [
        "19",
        "20",
        "30"
    ]
    static let cities = [
        "Kazan",
        "Pestretsy",
        "Moscow"
    ]
    static let names = [
        "Richard",
        "Abdula",
        "Ruslan",
        "Roman"
    ]
    static let statuses = [
        "Все хорошо!!!!",
        "Будь добрее",
        "Новость дня!!!",
        "Погода плохая"
    ]
    static let datesOfBirth = [
        "22.03.2000",
        "03.04.1999",
        "15.10.2001"
    ]
    static let homeTowns = [
        "Kazan",
        "Pestretsy",
        "Moscow",
        "Almet"
    ]
    static let arrayOfLanguages = [
        ["Russian"],
        ["English", "Russian"],
        ["Tatar", "English"]
    ]
    static let locations = [
        "Kazan",
        "Pestretsy",
        "Moscow",
        "Almet"
    ]
    static let instagrams = [
        "romash_only",
        "k322super",
        "ttr522"
    ]
    static let vks = [
        "romanshurkin",
        "aidarblednyi",
        "timurchernyi"
    ]
    static let companies = [
        "IOS Developer",
        "Company Of Tatarstan",
    ]
    static let schools = [
        "IT-liceym KFU",
        "131g",
        "177 school"
    ]
    static let universities = [
        "KFU ITIS",
        "KFU VMK",
        "Energo"
    ]
    
    init() {
        self.avatarImage = ""
        self.year =  ""
        self.city = ""
        self.name = ""
        self.status = ""
        self.dateOfBirth = ""
        self.homeTown = ""
        self.languages = [""]
        self.location = ""
        self.instagram = ""
        self.vk = ""
        self.companyOne = ""
        self.companyTwo = ""
        self.school = ""
        self.university = ""
    }
    
    init(
        avatarImage: String,
        year: String,
        city: String,
        name: String,
        status: String,
        dateOfBirth: String,
        homeTown: String,
        languages: [String],
        location: String,
        instagram: String,
        vk: String,
        companyOne: String,
        companyTwo: String,
        school: String,
        university: String
    ) {
        self.avatarImage = avatarImage
        self.year = year
        self.city = city
        self.name = name
        self.status = status
        self.dateOfBirth = dateOfBirth
        self.homeTown = homeTown
        self.languages = languages
        self.location = location
        self.instagram = instagram
        self.vk = vk
        self.companyOne = companyOne
        self.companyTwo = companyTwo
        self.school = school
        self.university = university
    }
    
    static func getRandomUser() -> User {
        guard
            let avatarImage = User.avatars.randomElement(),
            let year = User.years.randomElement(),
            let city = User.cities.randomElement(),
            let name = User.names.randomElement(),
            let status = User.statuses.randomElement(),
            let dateOfBirth = User.datesOfBirth.randomElement(),
            let homeTown = User.homeTowns.randomElement(),
            let languages = User.arrayOfLanguages.randomElement(),
            let location = User.locations.randomElement(),
            let instagram = User.instagrams.randomElement(),
            let vk = User.vks.randomElement(),
            let companyOne = User.companies.randomElement(),
            let companyTwo = User.companies.randomElement(),
            let school = User.schools.randomElement(),
            let university = User.universities.randomElement()
            else {
                return User()
        }
        
        return User(avatarImage: avatarImage, year: year, city: city, name: name, status: status, dateOfBirth: dateOfBirth, homeTown: homeTown, languages: languages, location: location, instagram: instagram, vk: vk, companyOne: companyOne, companyTwo: companyTwo, school: school, university: university)
    }
}
