//
//  ViewController.swift
//  Lesson2
//
//  Created by Ильдар Залялов on 25/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet var userImages: [UIImageView]!
    @IBOutlet weak var bigPhoto: UIImageView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var pageStatusLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var user: User!
    let segueId = "showDetail"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = getRandomUser()
        
        fillProperties()
        configureButton(editButton)
    }
    
    func configureButton(_ button: UIButton) {
        button.layer.cornerRadius = 23
    }
    
    func fillProperties() {
        
        self.title = user.name
        
        for imageView in userImages {
            
            imageView.image = UIImage(named: user.avatar)
            imageView.layer.cornerRadius = imageView.frame.height / 2
            imageView.clipsToBounds = true
        }
        
        bigPhoto.image = UIImage(named: user.avatar)
        
        fullNameLabel.text = "\(user.name) \(user.surname)"
        pageStatusLabel.text = user.pageStatus
        infoLabel.text = "\(user.age) лет, \(user.city)"
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == segueId {
            
            if let destinationVC = segue.destination as? DetailViewController {
                destinationVC.user = user
            }
        }
    }
}

