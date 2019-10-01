//
//  Account.swift
//  Lesson2_VK
//
//  Created by Азат Султанов on 29/09/2019.
//  Copyright © 2019 Прокопьев Павел. All rights reserved.
//

import Foundation
class User {
    var name: String = ["Азат","Паша","Лёха"].randomElement()!
    var surname: String = ["Султанов","Прокопьев","Навальный"].randomElement()!
    var instagram: String = ["ech.poch.mc","pavlusha.88","navalny"].randomElement()!
    var vkId: Int = Int.random(in: 100000...200000)
    var religion: String = ["Аутизм","Атеизм","Православие"].randomElement()!
    var school: String = ["Гимназия 1","СОШ 61","Вечерняя школа 1488"].randomElement()!
    var university: String = ["КФУ","КАИ","ПТУ"].randomElement()!
    var city: String = ["Казань","Москва"].randomElement()!
    var birthDay: String = ["14 Апреля 2000","20 Июля 2000","20 Июля 2007"].randomElement()!
    var politicalViews: String = ["Либераха","Монархист","Консерватор"].randomElement()!
    var homeTown: String = ["Казань","Москва","Чебоксары"].randomElement()!
    var gifts: [String] = [["gift1","gift2"],["gift1","gift1"],["gift2","gift2"]].randomElement()!
    var avatar: String = ["photo1","photo2","photo3"].randomElement()!
    var status: String = ["online","last seen 5 minute ago"].randomElement()!
    init() {
        print("User created")
    }
}



