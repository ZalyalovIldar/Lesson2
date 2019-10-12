//
//  ViewController.swift
//  Lesson2
//
//  Created by Сергей Шабельник on 10.10.2019.
//  Copyright © 2019 Сергей Шабельник. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Status {

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var AgeAndCityLabel: UILabel!
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var BirthDateLabel: UILabel!
    @IBOutlet weak var FirstCityLabel: UILabel!
    @IBOutlet weak var UniverLabel: UILabel!
    @IBOutlet weak var CityLabel: UILabel!
    @IBOutlet weak var VkIDLabel: UILabel!
    @IBOutlet weak var Avatar: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFields()
        // Do any additional setup after loading the view.
    }
    
    func setFields(){
        NameLabel.text = "\(user.firstName) \(user.lastName)"
        AgeAndCityLabel.text = "\(user.age) лет, \(user.birthCity)"
        StatusLabel.text = user.status
        BirthDateLabel.text = user.birthDate
        FirstCityLabel.text = user.birthCity
        UniverLabel.text = user.univer
        CityLabel.text = user.city
        VkIDLabel.text = user.vkID
        Avatar.image = UIImage.init(named: user.image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! NewStatusViewController
        
        destinationViewController.delegate = self
        destinationViewController.text = StatusLabel.text
    }
    
    func updateStatus(with text: String) {
        StatusLabel.text = text
    }

}

