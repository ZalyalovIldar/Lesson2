//
//  RandomUser.swift
//  Lesson2
//
//  Created by underq on 29/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation

class RandomUserBuilder {
    
    class func getRandomUser() -> User {
        
        let user = User()
        user.avatarImage = ["avatar1", "avatar2"].randomElement()
        user.name = ["Maxim Myalicin", "Porter Robinson"].randomElement()
        user.isOnline = [true, false].randomElement()
        user.status = ["suspended in twilight", "boys don’t cry"].randomElement()
        user.ageAndCityStatus = ["19, Kazan", "18, Perm"].randomElement()
        user.hometown = ["Perm", "Kazan"].randomElement()
        user.currentEdu = ["KFU", "PSU"].randomElement()
        user.vkLink = ["itsunderq", "underqcool"].randomElement()
        user.tgLink = ["itsunderq", "underqcool"].randomElement()
        user.numberPhone = ["89991631578", "88005553535"].randomElement()
        user.jobName = ["VK", "Flatstack"].randomElement()
        user.jobCity = ["Kazan", "Moscow"].randomElement()
        user.jobPosition = ["junior iOS developer", "middle iOS developer"].randomElement()
        user.anotherJobName = ["underq Music", "Soundcloud"].randomElement()
        user.anotherJobCity = ["Kazan", "Moscow"].randomElement()
        user.anotherJobPosition = ["middle iOS developer", "senior iOS developer"].randomElement()
        user.universityName = ["KFU", "PSU"].randomElement()
        user.universityYears = ["2019-2023","2020-2024"].randomElement()
        user.schoolName = ["114", "411"].randomElement()
        user.schoolYears = ["2007-2018", "2008-2019"].randomElement()
        user.gifts = []
        
        for _ in 0 ..< 4 {
            user.gifts.append(["gift1", "gift2"].randomElement()!)
        }
        
        return user
    }
}
