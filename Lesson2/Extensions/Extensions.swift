//
//  Extensions.swift
//  Lesson2
//
//  Created by Enoxus on 28/09/2019.
//  Copyright © 2019 Ильдар Залялов. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func getHeight() -> CGFloat {
        
        let sumHeight = self.subviews.map({$0.frame.size.height}).reduce(0, {x, y in x + y})
        return sumHeight
    }
}

extension UIView {
    
    func addTopBorder() {
        
        let border = CALayer()
        border.backgroundColor = UIColor.gray.cgColor
        border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: 0.25)
        self.layer.addSublayer(border)
    }
    
    func addBottomSeparator() {
        
        let border = CALayer()
        border.backgroundColor = UIColor.gray.cgColor
        border.frame = CGRect(x: 20, y: self.frame.size.height - 0.5, width: self.frame.size.width, height: 0.5)
        self.layer.addSublayer(border)
    }
    
    func addBottomBorder() {
        
        let border = CALayer()
        border.backgroundColor = UIColor.gray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - 0.5, width: self.frame.size.width, height: 0.5)
        self.layer.addSublayer(border)
    }
    
    func addBorders() {
        
        self.addTopBorder()
        self.addBottomBorder()
    }
}
