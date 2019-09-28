//
//  UserProvider.swift
//  Lesson2
//
//  Created by Enoxus on 28/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

class UserProvider {
    
    class func getRandomUser() -> User {
        
        let user = User()
        user.name = ["Никита Афанасьев", "Василий Пупкин"].randomElement()!
        user.aviName = ["avi", "avi2"].randomElement()!
        user.online = [true, false].randomElement()!
        user.ageAndCity = ["19 лет, Казань", "23 года, Москва"].randomElement()!
        user.status = ["", "#roadto5k"].randomElement()!
        user.birthday = ["7 декабря", "12 августа"].randomElement()!
        user.currentStudy = ["МГУ", "Казанский Федеральный университет"].randomElement()!
        user.vkProfile = ["enoxus", "p1ckupm4st3r"].randomElement()!
        user.telegramProfile = ["enoxus", "p1ckupm4st3r"].randomElement()!
        user.firstCompanyName = ["Flatstack", "Технократия"].randomElement()!
        user.firstCompanyCityAndYear = ["Казань, 2020", "Москва, 2021"].randomElement()!
        user.firstCompanyPosition = ["iOS Developer", "QA Engineer"].randomElement()!
        user.secondCompanyName = ["Enoxus soft", "The Company"].randomElement()!
        user.secondCompanyCityAndYear = ["New York, 2022", "Москва, 2023"].randomElement()!
        user.secondCompanyPosition = ["CEO", "COO"].randomElement()!
        user.universityName = ["КФУ (бывш. КГУ им. Ульянова-Ленина)", "МГУ им. М.В. Ломоносова"].randomElement()!
        user.facultyName = ["Высшая школа информационных технологий и интеллектуальных систем", "Факультет вычислительной математики и кибернетики"].randomElement()!
        user.schoolName = ["Школа №6", "Лицей №2"].randomElement()!
        user.schoolCityName = ["Альметьевск", "Казань"].randomElement()!
        user.giftNames = []
        
        for _ in 0 ..< 4 {
            user.giftNames.append(["gift90px", "gift90px2"].randomElement()!)
        }
        
        return user
    }
}
