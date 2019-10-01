//
//  user.swift
//  HW2
//
//  Created by Азат Султанов on 30/09/2019.
//  Copyright © 2019 Азат Султанов. All rights reserved.
//

import Foundation
class User {
    var name: String = ["Азат", "Паша", "Кирилл"].randomElement()!
    var surname: String = ["Султанов", "Бариев", "Королев"].randomElement()!
    var birthday: String = ["14 апреля 2000", "17 июля 1996", "15 января 1972"].randomElement()!
    var city: String = ["Казань", "Москва"].randomElement()!
    var homeCity: String = ["Нефтекамск", "Кукмор", "Москва"].randomElement()!
    var avatar: String = ["avatar1", "avatar2", "avatar3"].randomElement()!
    var status: String = ["online", "last seen recently"].randomElement()!
    var instagram : String = ["ech.poch.mc", "feya.blum", "po.zo"].randomElement()!
    var school: String = ["МБОУ Гимназия", "Лицей №1", "СОШ №8"].randomElement()!
    var university: String = ["КФУ", "КАИ"].randomElement()!
    var gifts: String = ["gift1", "gift2", "gift3"].randomElement()! 
    var languages = ["english", "deutsch", "русский"].randomElement()!
    init() {
        
    }
    
}
