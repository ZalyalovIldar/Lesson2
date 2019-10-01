//
//  ViewController.swift
//  Lesson2
//
//  Created by Ильдар Залялов on 25/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var onllineLabel: UILabel!
    @IBOutlet weak var ageAndCityLabel: UILabel!
    @IBOutlet weak var setStatusButton: UIButton!
    @IBOutlet weak var ContactsView: UIView!
    @IBOutlet weak var ContactsLabel: UILabel!
    @IBOutlet weak var vkImageView: UIImageView!
    @IBOutlet weak var tgImageView: UIImageView!
    @IBOutlet weak var vkLinkLabel: UILabel!
    @IBOutlet weak var tgLinkLabel: UILabel!
    @IBOutlet weak var careerView: UIView!
    @IBOutlet weak var careerLabel: UILabel!
    @IBOutlet weak var firstCompanyLabel: UILabel!
    @IBOutlet weak var firstPositionLabel: UILabel!
    @IBOutlet weak var firstJobCityLabel: UILabel!
    @IBOutlet weak var secondCompanyLabel: UILabel!
    @IBOutlet weak var secondPositionLabel: UILabel!
    @IBOutlet weak var secondJobCityLabel: UILabel!
    @IBOutlet weak var educationView: UIView!
    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var universityYearsLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var schoolYearsLabel: UILabel!
    @IBOutlet weak var giftsView: UIView!
    @IBOutlet weak var giftsLabel: UILabel!
    @IBOutlet weak var firstGiftImageView: UIImageView!
    @IBOutlet weak var secondGiftImageView: UIImageView!
    @IBOutlet weak var thirdGiftImageView: UIImageView!
    @IBOutlet weak var fourthGiftImageView: UIImageView!
    var user: User!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        user = RandomUserBuilder.getRandomUser()
       
        avatarImage.image = UIImage(named: user.avatarImage)
        nameLabel.text = user.name
        onllineLabel.text = user.isOnline ? "online" : "offline"
        ageAndCityLabel.text = user.ageAndCityStatus
        vkLinkLabel.text = user.vkLink
        tgLinkLabel.text = user.tgLink
        firstCompanyLabel.text = user.jobName
        firstPositionLabel.text = user.jobPosition
        firstJobCityLabel.text = user.jobCity
        secondCompanyLabel.text = user.anotherJobName
        secondPositionLabel.text = user.anotherJobPosition
        secondJobCityLabel.text = user.anotherJobCity
        universityLabel.text = user.universityName
        universityYearsLabel.text = user.universityYears
        schoolLabel.text = user.schoolName
        schoolYearsLabel.text = user.schoolYears
        firstGiftImageView.image = UIImage(named: user.gifts[0])
        secondGiftImageView.image = UIImage(named: user.gifts[1])
        thirdGiftImageView.image = UIImage(named: user.gifts[2])
        fourthGiftImageView.image = UIImage(named: user.gifts[3])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        scrollView.contentSize.height = scrollView.getHeight() + 150
        
        if user.status.isEmpty {
            setStatusButton.setTitle("Set status", for: .normal)
        }
        else {
            setStatusButton.setTitle(user.status, for: .normal)
            setStatusButton.setTitleColor(.white, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editStatusSegue" {
            let destination = segue.destination as! EditStatusViewController
            destination.configure(with: user)
        }
    }
    
}

