//
//  InfoViewController.swift
//  Lesson2
//
//  Created by Сергей Шабельник on 12.10.2019.
//  Copyright © 2019 Сергей Шабельник. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityAndAgeLabel: UILabel!
    @IBOutlet weak var Avatar: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = getRandomUser()
        setFields()
        // Do any additional setup after loading the view.
    }
    
    func customImage(){
        Avatar.layer.cornerRadius = Avatar.frame.size.height / 2
        Avatar.clipsToBounds = true
    }
    
    func setFields(){
        nameLabel.text = "\(user.firstName) \(user.lastName)"
        cityAndAgeLabel.text = "\(user.age) лет, \(user.birthCity)"
        Avatar.image = UIImage.init(named: user.image)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationViewController = segue.destination as! ViewController
        destinationViewController.user = user
        
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
