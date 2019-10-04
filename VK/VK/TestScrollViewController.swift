//
//  TestScrollViewController.swift
//  VK
//
//  Created by Гиниятуллина Алсу Зямилевна on 03/10/2019.
//  Copyright © 2019 Гиниятуллина Алсу Зямилевна. All rights reserved.
//

import UIKit

class TestScrollViewController: UITableViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.height = 1300

    }
}
