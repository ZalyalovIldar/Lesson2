//
//  DetailViewController.swift
//  Lesson2
//
//  Created by Amir on 28/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, DataPassDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pageStatusLabel: UILabel!
    @IBOutlet weak var ageCityLabel: UILabel!
    
    @IBOutlet weak var editStatusLabel: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var languagesLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var instLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var vkIdLabel: UILabel!
    
    @IBOutlet var universityLabels: [UILabel]!
    @IBOutlet weak var facultyLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var schoolCityLabel: UILabel!
    @IBOutlet weak var schoolYearsLabel: UILabel!
    
    @IBOutlet var giftsImageView: [UIImageView]!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillProperties()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        statusLabel.text = user.status
        
        if statusLabel.text == "" {
            editStatusLabel.isHidden = false
            status.isHidden = true
            statusLabel.isHidden = true
        } else {
            editStatusLabel.isHidden = true
            status.isHidden = false
            statusLabel.isHidden = false
        }
    }
    
    func fillProperties() {
        
        scrollView.contentSize.height = 1350
        
        self.title = user.name
        
        profileImageView.image = UIImage(named: user.avatar)
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        
        nameLabel.text = "\(user.name) \(user.surname)"
        pageStatusLabel.text = user.pageStatus
        ageCityLabel.text = "\(user.age) лет, \(user.city)"
        
        birthdayLabel.text  = "\(user.birthday) \(user.month)"
        hometownLabel.text = user.city
        languagesLabel.text = "Русский, English"
        
        cityLabel.text = user.city
        instLabel.text = user.id
        phoneNumberLabel.text = user.phone
        vkIdLabel.text = user.id
        
        schoolLabel.text = user.schoolName
        schoolCityLabel.text = user.schoolCity
        schoolYearsLabel.text = user.schoolYears
        
        for universityLabel in universityLabels {
            universityLabel.text = user.univer
        }
        
        facultyLabel.text = user.faculty
    }
    
    @IBAction func unwindToDetailVC(_ unwindSegue: UIStoryboardSegue) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "newStatus" {
            
            let destVC = segue.destination as! NewStatusViewController
            
            destVC.delegate = self
            destVC.text = statusLabel.text
        }
    }
    
    func updateLabel(with text: String) {
        self.statusLabel.text = text
    }
}
