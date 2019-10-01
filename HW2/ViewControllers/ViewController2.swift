//
//  ViewController2.swift
//  HW2
//
//  Created by Азат Султанов on 01/10/2019.
//  Copyright © 2019 Азат Султанов. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var changeStatus: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var homeTown: UILabel!
    @IBOutlet weak var studiedAt: UILabel!
    @IBOutlet weak var languages: UILabel!
    
    @IBOutlet weak var townLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    
    @IBOutlet weak var giftImage1: UIImageView!
    @IBOutlet weak var giftImage2: UIImageView!
    @IBOutlet weak var giftImage3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = User()
        createUser(user: user)
        scrollView.contentSize.height = 1200
        // Do any additional setup after loading the view.
    }
    
    func createUser(user: User) {
        fullName.text = user.name + " " + user.surname
        //birthday.text = user.birthday - всё хуйня переделывай на чо
        homeTown.text = user.homeCity
        studiedAt.text = user.university
        languages.text = user.languages
        townLabel.text = user.city
        instagramLabel.text = user.instagram
        universityLabel.text = user.university
        schoolLabel.text = user.school
        giftImage1.image = UIImage(named: user.gifts)
        giftImage2.image = UIImage(named: user.gifts)
        giftImage3.image = UIImage(named: user.gifts)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
