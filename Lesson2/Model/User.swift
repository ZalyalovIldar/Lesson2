//
//  User.swift
//  Lesson2
//
//  Created by Amir on 28/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

struct User {
    var name: String
    var surname: String
    var birthday: Int
    var month: String
    var age: Int
    var status: String
    var city: String
    var pageStatus: String
    var avatar: String
    var phone: String
    var schoolName: String
    var schoolCity: String
    var schoolYears: String
    var univer: String
    var faculty: String
    let id: String
}

let avatars = ["profile", "profile2", "profile3", "profile4"]
let names = ["Игорь", "Михаил", "Филипп", "Стас", "Тим"]
let surnames = ["Крутой", "Иванов", "Киркоров", "Михайлов", "Кук"]

let statuses = ["online", "был в сети 5 минут назад"]

let ages = [10, 5, 54, 12, 34, 67]
let birthdays = [12, 14, 15, 4, 30, 28, 20]
let months = ["января", "февраля", "мая", "июня", "июля", "августа", "октября", "декабря"]

let ids = ["fkirkorov2001", "mikhaylov99", "kook212", "maxik_krut"]
let phones = ["+79990005673", "+79942006573", "+3425679709"]
let cities = ["Москва", "Дагестан", "Орел", "Казань", "New-York"]

let schoolNames = ["Школа №1 '12", "Лицей №2 '10", "IT-лицей КФУ '18"]
let schoolCities = ["Казань", "Москва", "Орел"]
let schoolYears = ["2000-2010", "1990-2000", "2014-2018"]

let univers = ["КАИ '12", "КХТИ '02", "КФУ '22", "MTI '10", "КГЭУ '99"]
let faculties = ["Программная инженерия", "Инфобез", "Super faculty", "ВМК", "Прикладная инфа"]


func getRandomUser() -> User {
    
    guard
        let name = names.randomElement(),
        let surname = surnames.randomElement(),
        let age = ages.randomElement(),
        let city = cities.randomElement(),
        let pageStatus = statuses.randomElement(),
        let avatar = avatars.randomElement(),
        let phone = phones.randomElement(),
        let schoolName = schoolNames.randomElement(),
        let schoolCity = schoolCities.randomElement(),
        let schoolYear = schoolYears.randomElement(),
        let id = ids.randomElement(),
        let birthday = birthdays.randomElement(),
        let month = months.randomElement(),
        let univer = univers.randomElement(),
        let faculty = faculties.randomElement()
        else {
            return User(name: "name", surname: "surname", birthday: 0, month: "month", age: 10, status: "status", city: "city", pageStatus: "page status", avatar: "avatar", phone: "phone", schoolName: "", schoolCity: "", schoolYears: "", univer: "univer", faculty: "", id: "inst")
    }
        
    return User.init(name: name,
                     surname: surname,
                     birthday: birthday,
                     month: month,
                     age: age,
                     status: "Hello World!",
                     city: city,
                     pageStatus: pageStatus,
                     avatar: avatar,
                     phone: phone,
                     schoolName: schoolName,
                     schoolCity: schoolCity,
                     schoolYears: schoolYear,
                     univer: univer,
                     faculty: faculty,
                     id: id)
}
