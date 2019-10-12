//
//  User.swift
//  Lesson2
//
//  Created by Сергей Шабельник on 12.10.2019.
//  Copyright © 2019 Сергей Шабельник. All rights reserved.
//

import Foundation

struct User{
    
    var firstName: String
    var lastName: String
    var age: Int
    var city: String
    var birthDate: String
    var image: String
    var status: String
    var birthCity: String
    var univer: String
    var vkID: String
}

let firsNameArray = ["Сергей", "Александр", "Павел", "Максим", "Владимир"]
let lastNameArray = ["Шабельник", "Пушкин", "Сычев", "Зубков", "Путин"]
let ageArray = [19,18,45,30,67]
let cityArray = ["Казань", "Москва", "Санкт-Петербург", "Челябинск", "Новосибирск"]
let birthDateArray = ["24 апреля 2001г.", "30 мая 2000г.", "23 декабря 1975", "10 ноября 1953г.", "15 февраля 1981г."]
let imageArray = ["Avatar","Avatar1","Avatar2","Avatar3"]
let univerArray = ["КФУ", "КХТИ", "ИТМО", "МГУ", "СпбГУ"]
let vkIDArray = ["putin228", "pasha24", "truwer", "104", "saluki"]

func getRandomUser() -> User{
    
    guard
        let firstName = firsNameArray.randomElement(),
        let lastName = lastNameArray.randomElement(),
        let age = ageArray.randomElement(),
        let city = cityArray.randomElement(),
        let birthDate = birthDateArray.randomElement(),
        let image = imageArray.randomElement(),
        let univer = univerArray.randomElement(),
        let vkID = vkIDArray.randomElement()
        else {
            return User.init(firstName: "", lastName: "", age: 0, city: "", birthDate: "", image: "", status: "", birthCity: "", univer: "", vkID: "")
    }
    
    return User.init(firstName: firstName, lastName: lastName, age: age, city: city, birthDate: birthDate, image: image, status: "iOS", birthCity: city, univer: univer, vkID: vkID)
    
    
}



