//
//  ViewController.swift
//  Lesson2
//
//  Created by Ильдар Залялов on 25/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var aviImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var onlineLabel: UILabel!
    @IBOutlet weak var ageAndCityLabel: UILabel!
    @IBOutlet weak var editStatusButton: UIButton!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var currentStudyLabel: UILabel!
    @IBOutlet weak var vkProfileLabel: UILabel!
    @IBOutlet weak var telegramProfileLabel: UILabel!
    @IBOutlet weak var firstCompanyNameLabel: UILabel!
    @IBOutlet weak var firstCompanyCityAndYearLabel: UILabel!
    @IBOutlet weak var firstCompanyPositionLabel: UILabel!
    @IBOutlet weak var secondCompanyNameLabel: UILabel!
    @IBOutlet weak var secondCompanyCityAndYearLabel: UILabel!
    @IBOutlet weak var secondCompanyPositionLabel: UILabel!
    @IBOutlet weak var universityNameLabel: UILabel!
    @IBOutlet weak var facultyNameLabel: UILabel!
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var schoolCityLabel: UILabel!
    @IBOutlet weak var firstGiftImageView: UIImageView!
    @IBOutlet weak var secondGiftImageView: UIImageView!
    @IBOutlet weak var thirdGiftImageView: UIImageView!
    @IBOutlet weak var fourthGiftImageView: UIImageView!
    @IBOutlet weak var statusCellCaptionLabel: UILabel!
    
    @IBOutlet weak var noteworthyPagesView: UIView!
    @IBOutlet weak var giftsView: UIView!
    @IBOutlet weak var schoolView: UIView!
    @IBOutlet weak var universityView: UIView!
    @IBOutlet weak var secondCareerView: UIView!
    @IBOutlet weak var firstCareerView: UIView!
    @IBOutlet weak var telegramView: UIView!
    @IBOutlet weak var vkView: UIView!
    @IBOutlet weak var studyView: UIView!
    @IBOutlet weak var birthdayView: UIView!
    var user: User!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        user = UserProvider.getRandomUser()
        
        aviImageView.layer.cornerRadius = aviImageView.bounds.height/2
        editStatusButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        
        editStatusButton.addBorders()
        birthdayView.addTopBorder()
        birthdayView.addBottomSeparator()
        studyView.addBottomBorder()
        vkView.addTopBorder()
        vkView.addBottomSeparator()
        telegramView.addBottomBorder()
        firstCareerView.addTopBorder()
        firstCareerView.addBottomSeparator()
        secondCareerView.addBottomBorder()
        universityView.addTopBorder()
        universityView.addBottomSeparator()
        schoolView.addBottomBorder()
        giftsView.addBorders()
        noteworthyPagesView.addBorders()

        aviImageView.image = UIImage(named: user.aviName)
        nameLabel.text = user.name
        onlineLabel.text = user.online ? "online" : "offline"
        ageAndCityLabel.text = user.ageAndCity
        birthdayLabel.text = user.birthday
        currentStudyLabel.text = user.currentStudy
        vkProfileLabel.text = user.vkProfile
        telegramProfileLabel.text = user.telegramProfile
        firstCompanyNameLabel.text = user.firstCompanyName
        firstCompanyCityAndYearLabel.text = user.firstCompanyCityAndYear
        firstCompanyPositionLabel.text = user.firstCompanyPosition
        secondCompanyNameLabel.text = user.secondCompanyName
        secondCompanyCityAndYearLabel.text = user.secondCompanyCityAndYear
        secondCompanyPositionLabel.text = user.secondCompanyPosition
        universityNameLabel.text = user.universityName
        facultyNameLabel.text = user.facultyName
        schoolNameLabel.text = user.schoolName
        schoolCityLabel.text = user.schoolCityName
        
        firstGiftImageView.image = UIImage(named: user.giftNames[0])
        secondGiftImageView.image = UIImage(named: user.giftNames[1])
        thirdGiftImageView.image = UIImage(named: user.giftNames[2])
        fourthGiftImageView.image = UIImage(named: user.giftNames[3])
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        mainScrollView.contentSize.height = contentView.getHeight() + 150
        
        if user.status == "" {
            statusCellCaptionLabel.alpha = 0
            editStatusButton.setTitle("Изменить статус", for: .normal)
            editStatusButton.setTitleColor(UIColor.gray, for: .normal)
            editStatusButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        }
        else {
            statusCellCaptionLabel.alpha = 1
            editStatusButton.setTitle(user.status, for: .normal)
            editStatusButton.setTitleColor(.white, for: .normal)
            editStatusButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 15, bottom: 0, right: 0)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editStatusSegue" {
            let destVC = segue.destination as! EditStatusViewController
            destVC.configure(with: user)
        }
    }
}

